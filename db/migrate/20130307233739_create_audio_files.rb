class CreateAudioFiles < ActiveRecord::Migration
  def change
    create_table :audio_files do |t|
      t.string :name, :null => false
      t.string :mp3, :null => false

      t.timestamps
    end
  end
end
