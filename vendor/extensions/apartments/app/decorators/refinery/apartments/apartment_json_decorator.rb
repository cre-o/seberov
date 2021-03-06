module Refinery
  module Apartments
    # @TODO replace with https://github.com/apotonick/representable
    class ApartmentJsonDecorator < Draper::Decorator
      include ApartmentDecorations
      include ActionView::Helpers::AssetTagHelper
      include Refinery::ImageHelper

      delegate_all

      def photo_tag
        image_fu object.photo, '220x220'
      end

      def rooms
        total = 1 # kitchen presents everywere
        object.apartment_floors.each do |floor|
          total += 1 if floor.room1_area.present?
          total += 1 if floor.room2_area.present?
          total += 1 if floor.room3_area.present?
          total += 1 if floor.room4_area.present?
          total += 1 if floor.room5_area.present?
        end
        total
      end

      def price_decorated
        price
      end

      def see_more
        t 'apartment_by_parameters_page.see_more'
      end

      def price_decorated
        "#{price_formated} #{t('defaults.currency_sign')}" if price.present?
      end

      def apartment_area_decorated
        "#{apartment_area || 0.0} #{t('defaults.square_sign')}"
      end

      def balcony_terace_area_decorated
        "#{balcony_terace_area || 0.0} #{t('defaults.square_sign')}"
      end

      def front_yard_area_decorated
        "#{front_yard_area || 0.0} #{t('defaults.square_sign')}"
      end

      def price_t
        t('forms.price_with_dph')
      end

      def floor_t
        t('forms.floor')
      end

      def floors_t
        t('forms.floors')
      end

      def layout_t
        t('forms.layout')
      end

      def total_floors_t
        t('forms.total_floors')
      end

      def front_yard_area_t
        t('forms.front_yard_area')
      end

      def apartment_area_t
        t('forms.apartment_area')
      end

      def balcony_terace_area_t
        t('forms.balcony_terace_area')
      end

      def front_yard_area_t
        t('forms.front_yard_area')
      end
    end
  end
end
