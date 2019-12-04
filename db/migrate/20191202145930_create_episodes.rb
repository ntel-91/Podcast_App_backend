class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :episode_name
      t.integer :podcast_id
      t.string :description
      t.string :audio

      t.timestamps
    end
  end
end
