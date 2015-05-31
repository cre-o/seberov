module Refinery
  module Apartments
    class ApartmentSerializer < ActiveModel::Serializer
      include ActionView::Helpers::NumberHelper

      attributes :id, :unit_id, :block, :photo, :floor, :floors, :floors_decorated, :total_floors,
        :layout, :apartment_area, :balcony_terace_area, :front_yard_area,
        :price, :price_formated, :position, :state

      has_many :apartment_floors

      # It should display each floor coma separated
      # example:
      # => 1NP, 2NP
      def floors_decorated
        abbr = 'NP'
        floors.map { |x| "#{x}#{abbr}" }.join ','
      end

      def floors
        array = []
        total_floors.times { |n| array << floor + n }
        array
      end

      def price_formated
         number_with_delimiter(price, delimiter: " ")
      end
    end
  end
end
