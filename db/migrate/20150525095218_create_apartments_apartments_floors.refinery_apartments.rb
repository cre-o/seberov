# This migration comes from refinery_apartments (originally 2)
class CreateApartmentsApartmentsFloors < ActiveRecord::Migration

  def up
    create_table :refinery_apartment_floors do |t|
      t.references :apartment, null: false
      t.integer :floor_number, null: false, index: true
      t.float :corridor_area
      t.float :wc_area
      t.float :workroom_area
      t.float :kitchen_area
      t.float :chamber_area
      t.float :bathroom_area
      t.float :staircase_area
      t.float :room1_area
      t.float :room2_area
      t.float :room3_area
      t.float :room4_area
      t.float :room5_area

      t.timestamps
    end

  end

  def down
    drop_table :refinery_apartment_floors
  end

end
