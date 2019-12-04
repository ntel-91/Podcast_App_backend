class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :episode_id
      t.integer :bookmark_time

      t.timestamps
    end
  end
end
