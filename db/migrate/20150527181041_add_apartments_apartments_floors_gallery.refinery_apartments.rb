# This migration comes from refinery_apartments (originally 6)
class AddApartmentsApartmentsFloorsGallery < ActiveRecord::Migration

  def change
    add_column :refinery_apartment_floors, :gallery_area, :float
  end

end

