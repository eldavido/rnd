class RemoveEosAudio < ActiveRecord::Migration
  def change
    remove_column :features, :audio_file
    remove_column :features, :audio_mime
    remove_column :features, :audio_bytes
    remove_column :features, :audio_seconds
  end
end
