# An interview from Engineers Onstage series
class EosFeature < Feature
  has_attached_file :podcast,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/paperclip.yml",
    :path => "/features/audio/:style/:id/:filename"

  def self.podcast_feed_features
    find(:all, :order => 'content_date DESC', :limit => 10)
  end
end

