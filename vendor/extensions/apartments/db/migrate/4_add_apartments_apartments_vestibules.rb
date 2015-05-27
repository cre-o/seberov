class AddApartmentsApartmentsVestibules < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :vestibule_area, :float
  end

end

