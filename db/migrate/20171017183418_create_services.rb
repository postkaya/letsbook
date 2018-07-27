class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :category_id
      t.string :name
      t.string :slug
      t.string :order_index, default: 0

      t.timestamps
    end
    add_index :services, :name, unique: true
    add_index :services, :slug, unique: true
  end
end
