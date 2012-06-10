# feeds for the podcasts

class PodcastFeedsController < ApplicationController
  def engineers_onstage
    @features = EosFeature.podcast_feed_features
    
    respond_to do |format|
      format.xml
    end
  end
end

