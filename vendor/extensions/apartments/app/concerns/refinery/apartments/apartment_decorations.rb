module Refinery
  module Apartments
    module ApartmentDecorations
      include ActionView::Helpers::TranslationHelper

      # It should display each floor coma separated
      # example:
      # => 1NP, 2NP
      def floors
        abbr = 'NP'
        floors_array.map { |x| "#{x}#{abbr}" }.join ','
      end

      def price
        "#{price_formated} #{t('defaults.currency_sign')}"
      end

      def price_formated
         number_with_delimiter(object.price, delimiter: " ")
      end

      def area
        apartment_area
      end

      def floors_array
        array = []
        total_floors.times { |n| array << floor + n }
        array
      end
    end
  end
end
