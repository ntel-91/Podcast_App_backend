class AddRssToPodcasts < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :rss, :string
  end
end
