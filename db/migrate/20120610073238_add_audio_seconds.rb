class AddAudioSeconds < ActiveRecord::Migration
  def change
    add_column :eos_features, :audio_seconds, :integer
  end
end
