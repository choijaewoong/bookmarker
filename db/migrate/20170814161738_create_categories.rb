class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|

      t.integer :user_id
      t.text :color
      t.text :title
      t.timestamps
    end
  end
end
