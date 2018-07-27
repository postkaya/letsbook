class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.text :description

      t.timestamps
    end
  end
end
