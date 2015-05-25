class CreateApartmentsApartments < ActiveRecord::Migration

  def up
    create_table :refinery_apartments do |t|
      t.string :unit_id
      t.integer :photo_id
      t.string :block
      t.integer :floor
      t.string :total_floors
      t.string :layout
      t.float :apartment_area
      t.float :balcony_terace_area
      t.float :front_yard_area
      t.decimal :price
      t.integer :position
      t.string :state

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-apartments"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/apartments/apartments"})
    end

    drop_table :refinery_apartments

  end

end
