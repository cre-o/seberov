module Refinery
  module Apartments
    module Admin
      class ApartmentsController < ::Refinery::AdminController

        crudify :'refinery/apartments/apartment',
                :title_attribute => 'unit_id'

        alias_method :update_copy, :update
        alias_method :create_copy, :create

        def create
          strip_spaces
          fix_colons
          create_copy
        end

        def update
          strip_spaces
          fix_colons
          update_copy
        end

        private

        def strip_spaces
          params['apartment']['price'] = params['apartment']['price'].gsub(/\s+/, '')
        end

        def fix_colons
          floors_attributes = params['apartment']['apartment_floors_attributes']

          if floors_attributes.present?
            fa_key = floors_attributes.keys.first

            fixed = params['apartment']['apartment_floors_attributes'][fa_key].map do |k, str|
              [k, /[0-9]+\,[0-9]+/ =~ str ? str.gsub(/,/, '.') : str]
            end.to_h

            params['apartment']['apartment_floors_attributes'][fa_key] = fixed
          end

          params['apartment']['apartment_area'] = params['apartment']['apartment_area'].gsub(/,/, '.')
          params['apartment']['balcony_terace_area'] = params['apartment']['balcony_terace_area'].gsub(/,/, '.')
          params['apartment']['front_yard_area'] = params['apartment']['front_yard_area'].gsub(/,/, '.')
        end

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
