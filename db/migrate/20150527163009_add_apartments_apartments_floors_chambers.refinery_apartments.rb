# This migration comes from refinery_apartments (originally 3)
class AddApartmentsApartmentsFloorsChambers < ActiveRecord::Migration

  def change
    rename_column :refinery_apartment_floors, :chamber_area, :chamber1_area
    add_column :refinery_apartment_floors, :chamber2_area, :float
    add_column :refinery_apartment_floors, :chamber3_area, :float
  end

end

