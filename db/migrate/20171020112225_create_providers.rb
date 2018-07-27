class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true
      t.references :provider_type, foreign_key: true
      t.string :name
      t.string :slug
      t.string :website
      t.string :address
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
    add_index :providers, :name, unique: true
  end
end
