class AddDescriptionToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :description, :text
  end
end
