module Refinery
  module Apartments
    module Admin
      class ApartmentsController < ::Refinery::AdminController

        crudify :'refinery/apartments/apartment',
                :title_attribute => 'unit_id'

        private

        # Only allow a trusted parameter "white list" through.
        def apartment_params
          params.require(:apartment).permit(
            :unit_id, :block, :floor, :photo_id, :total_floors,
            :layout, :apartment_area, :balcony_terace_area, :front_yard_area, :price,
            apartment_floors_attributes: [
              :id, :floor_number, :done, :_destroy,
              :corridor_area, :wc_area, :kitchen_area,
              :chamber_area, :bathroom_area, :staircase_area,
              :room1_area, :room2_area, :room3_area, :room4_area, :room5_area]
            )
        end
      end
    end
  end
end
