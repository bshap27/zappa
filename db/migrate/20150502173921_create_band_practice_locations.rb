class CreateBandPracticeLocations < ActiveRecord::Migration
  def change
    create_table :band_practice_locations do |t|
      t.string :name
      t.integer :band_id

      t.string :street
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
