# This migration comes from refinery_apartments (originally 4)
class AddApartmentsApartmentsVestibules < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :vestibule_area, :float
  end

end

