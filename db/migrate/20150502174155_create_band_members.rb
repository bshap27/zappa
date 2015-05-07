class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|
      t.integer :band_id
      t.integer :user_id
      t.boolean :performer
      t.boolean :management

      t.timestamps null: false
    end
  end
end
