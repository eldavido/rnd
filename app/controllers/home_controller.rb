#HomeController
class HomeController < ApplicationController
  def index
    @features = Feature.home_page_features
  end
end

