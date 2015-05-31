class ChangeApartmentsApartmentsTotalFloors < ActiveRecord::Migration

  def up
    change_column :refinery_apartments, :total_floors, :integer
  end

  def down
    change_column :refinery_apartments, :total_floors, :string
  end

end

