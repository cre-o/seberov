module Refinery
  module Apartments
    class ApartmentSerializer < ActiveModel::Serializer
      attributes :id, :unit_id, :photo_id, :floor, :total_floors,
        :layout, :apartment_area, :balcony_terace_area, :front_yard_area,
        :price, :position, :state

      has_many :apartment_floors
    end
  end
end
