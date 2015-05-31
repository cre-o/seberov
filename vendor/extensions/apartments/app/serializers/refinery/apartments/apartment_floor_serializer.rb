module Refinery
  module Apartments
    class ApartmentFloorSerializer < ActiveModel::Serializer
      attributes :apartment_id, :floor_number, :corridor_area, :wc_area,
        :workroom_area, :kitchen_area, :chamber1_area, :bathroom_area,
        :staircase_area, :room1_area, :room2_area, :room3_area, :room4_area, :room5_area,
        :chamber2_area, :chamber3_area, :vestibule_area, :cloakroom1_area, :cloakroom2_area,
        :gallery_area
    end
  end
end
