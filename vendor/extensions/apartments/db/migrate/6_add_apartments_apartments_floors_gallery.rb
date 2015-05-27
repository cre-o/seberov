class AddApartmentsApartmentsFloorsGallery < ActiveRecord::Migration

  def change
    add_column :refinery_apartment_floors, :gallery_area, :float
  end

end

