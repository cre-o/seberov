class CreateApartmentsApartmentsFloors < ActiveRecord::Migration

  def up
    create_table :refinery_apartment_floors do |t|
      t.references :refinery_apartments, null: false
      t.integer :floor_number, null: false, index: true
      t.float :corridor_area
      t.float :wc_area
      t.float :workroom_area
      t.float :kitchen_area
      t.float :chamber_area
      t.float :bathroom
      t.float :staircase
      t.float :room1
      t.float :room2
      t.float :room3
      t.float :room4
      t.float :room5

      t.timestamps
    end

  end

  def down
    drop_table :refinery_apartments_floors
  end

end
