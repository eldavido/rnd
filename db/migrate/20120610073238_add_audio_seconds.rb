class AddAudioSeconds < ActiveRecord::Migration
  def change
    add_column :features, :audio_seconds, :integer
  end
end
