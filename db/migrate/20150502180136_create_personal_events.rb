class CreatePersonalEvents < ActiveRecord::Migration
  def change
    create_table :personal_events do |t|
      t.string :name
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.boolean :recurring

      t.timestamps null: false
    end
  end
end


