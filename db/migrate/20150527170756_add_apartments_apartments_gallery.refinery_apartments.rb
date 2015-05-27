# This migration comes from refinery_apartments (originally 6)
class AddApartmentsApartmentsGallery < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :gallery_area, :float
  end

end

