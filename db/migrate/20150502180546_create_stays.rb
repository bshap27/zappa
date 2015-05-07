class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.integer :band_id
      t.integer :event_id

      t.string :contact_name
      t.string :contact_phone

      t.string :street
      t.string :city
      t.string :state
      t.integer :zip

      t.boolean :pets

      t.timestamps null: false
    end
  end
end