class CreateBandPractices < ActiveRecord::Migration
  def change
    create_table :band_practices do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :band_practice_location_id
      t.integer :band_id
      
      t.timestamps null: false
    end
  end
end
