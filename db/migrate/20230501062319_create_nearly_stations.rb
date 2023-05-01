class CreateNearlyStations < ActiveRecord::Migration[6.0]
  def change
    create_table :nearly_stations do |t|
      t.string :line_name
      t.string :station_name
      t.integer :on_foot_time
      t.timestamps
    end
  end
end
