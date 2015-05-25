module Refinery
  module Apartments
    module Admin
      class ApartmentsController < ::Refinery::AdminController

        crudify :'refinery/apartments/apartment',
                :title_attribute => 'block'

        private

        # Only allow a trusted parameter "white list" through.
        def apartment_params
          params.require(:apartment).permit(:block, :unit_id, :floor, :total_floors, :layout, :apartment_area, :balcony_terace_area, :front_yard_area, :price)
        end
      end
    end
  end
end
