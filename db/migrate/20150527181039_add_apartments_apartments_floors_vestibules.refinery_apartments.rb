# This migration comes from refinery_apartments (originally 4)
class AddApartmentsApartmentsFloorsVestibules < ActiveRecord::Migration

  def change
    add_column :refinery_apartment_floors, :vestibule_area, :float
  end

end

