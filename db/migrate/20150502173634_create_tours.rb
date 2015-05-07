class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :color
      t.integer :event_id

      t.timestamps null: false
    end
  end
end

