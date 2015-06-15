module Refinery
  module Apartments
    class ApartmentSerializer < ActiveModel::Serializer
      include ActionView::Helpers::NumberHelper
      include ApartmentDecorations

      attributes :id, :unit_id, :block, :photo, :floor, :floors, :floors_array, :total_floors,
        :layout, :apartment_area, :balcony_terace_area, :front_yard_area,
        :price, :price_formated, :price_decorated, :position, :state

      has_many :apartment_floors

      def price_decorated
        "#{price_formated} #{t('defaults.currency_sign')}" if price.present?
      end
    end
  end
end
