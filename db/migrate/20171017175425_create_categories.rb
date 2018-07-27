class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.integer :order_index, default: 0
      t.timestamps
    end
    add_index :categories, :name, unique: true
    add_index :categories, :slug, unique: true
  end
end
