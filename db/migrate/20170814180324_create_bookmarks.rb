class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      
      t.integer :category_id
      t.string :title, default: ""
      t.string :link, default: "#"
      t.string :img_url, default: ""
      t.timestamps
    end
  end
end
