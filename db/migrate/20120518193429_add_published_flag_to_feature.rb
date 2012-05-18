class AddPublishedFlagToFeature < ActiveRecord::Migration
  def change
    # Features aren't published by default
    add_column :features, :published, :boolean, :default => false

    # Mark all previously existing features as published
    Feature.all.each do |f|
      f.published = true
      f.save
    end
  end
end
