class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.boolean :bring_pa
      t.string :mailing_address_street
      t.string :mailing_address_city
      t.string :mailing_address_state
      t.integer :mailing_address_zip
      t.integer :num_posters
      t.string :dos_contact
      # t.boolean :sound_guy
      t.string :venue_notes

      t.timestamps null: false
    end
  end
end

