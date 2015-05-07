class CreateBandEvents < ActiveRecord::Migration
  def change
    create_table :band_events do |t|
      t.integer :band_id
      t.integer :event_id
      
      t.boolean :confirmed #(y/n) (validate when confirmed)
      t.time :load_time
      t.time :doors_time
      t.time :show_time
      t.time :set_time
      t.integer :tour_id
      t.boolean :food_comp
      t.boolean :drink_comp
      t.boolean :hotel_comp

      # COMP: (tied to event, pull from most recent event at that venue, if it exists, and make it editable)

      t.float :flat_rate
      t.boolean :door_deal #(y/n)
      t.string :door_deal_details #(if door deal, sub form appears.)

      t.integer :stay_id
      t.string :event_notes

      # (make available after event ends:)
      t.float :merch_total
      t.float :tips_total

      t.timestamps null: false
    end
  end
end
