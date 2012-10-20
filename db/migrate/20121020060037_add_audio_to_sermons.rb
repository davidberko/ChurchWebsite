class AddAudioToSermons < ActiveRecord::Migration
  def change
    add_column :sermons, :audio, :string
  end
end
