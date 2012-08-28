#HomeController
class HomeController < ApplicationController
  caches_action :index, :expires_in => 30.minutes

  def index
    @features = Feature.home_page_features
  end
end

