class AddApartmentsApartmentsGallery < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :gallery_area, :float
  end

end

