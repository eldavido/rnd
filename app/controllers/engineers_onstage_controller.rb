class EngineersOnstageController < ApplicationController
  before_filter :user_is_editor, :except => [:index, :show]

  def index
    @features = EosFeature.all
  end

  def show
    @feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @eos_feature = EosFeature.new
  end

  def create
    @eos_feature = EosFeature.new(params[:eos_feature])

    if @eos_feature.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def edit
    @eos_feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def update
    @eos_feature = EosFeature.find_by_slug(params[:id]) || EosFeature.find(params[:id])

    if @eos_feature.update_attributes(params[:eos_feature])
      redirect_to :action => :show, :id => @eos_feature.slug
    else
      render :edit
    end
  end
end
