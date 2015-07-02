# This migration comes from refinery_apartments (originally 8)
class AddApartmentsApartmentsParkingPrice < ActiveRecord::Migration

  def change
    add_column :refinery_apartments, :parking_price, :integer
  end

end

