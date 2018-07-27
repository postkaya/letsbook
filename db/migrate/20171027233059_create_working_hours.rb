class CreateWorkingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :working_hours do |t|
      t.string :day
      t.string :time_from
      t.string :time_to
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
