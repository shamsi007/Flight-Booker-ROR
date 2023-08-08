class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :start_location
      t.string :end_location
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
