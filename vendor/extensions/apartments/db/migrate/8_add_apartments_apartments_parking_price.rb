class AddApartmentsApartmentsParkingPrice < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :parking_price, :integer
  end

end

