class AddImgUrlToPodcasts < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :img_url, :string
  end
end
