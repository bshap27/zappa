class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :venue_id #(validate when unconfirmed)
      t.date :date #(validate when confirmed)
      t.integer :age_min
      t.float :ticket_price_adv #(integer) (if blank, default to TBD)
      t.float :ticket_price_dos #(integer)


      t.timestamps null: false
    end
  end
end

