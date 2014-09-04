class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.float :price
      t.string :preview_url
      t.string :song_url

      t.timestamps
    end
  end
end
