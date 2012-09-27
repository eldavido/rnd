class EngineersOnstageController < ApplicationController
  before_filter :user_is_editor, :except => [:index, :show]
  caches_action :index, :show

  def index
    @features = EosFeature.index_features

    respond_to do |format|
      format.html
      format.atom
    end
  end

  def show
    @feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @eos_feature = EosFeature.new

    render :eos_feature_form
  end

  def create
    @eos_feature = EosFeature.new(params[:eos_feature])

    if @eos_feature.save
      invalidate_caches

      redirect_to '/'
    else
      render :edit
    end
  end

  def edit
    @eos_feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    respond_to do |format|
      format.html { render :eos_feature_form }
    end
  end

  def update
    @eos_feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    if @eos_feature.update_attributes(params[:eos_feature])
      invalidate_caches

      redirect_to :action => :show, :id => @eos_feature.slug
    else
      render :eos_feature_form
    end
  end

  protected
  def invalidate_caches
    expire_action :controller => :engineers_onstage, :action => :index
    expire_action :controller => :engineers_onstage, :action => :show, :id => @eos_feature.id
    expire_action :controller => :home, :action => :index
  end
end
