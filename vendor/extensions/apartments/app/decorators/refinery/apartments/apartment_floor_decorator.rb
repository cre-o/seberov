module Refinery
  module Apartments
    class ApartmentFloorDecorator < Draper::Decorator
      include ActionView::Helpers::TranslationHelper
      delegate_all

      # Dynamic dimensions assign
      ApartmentFloor.column_names.select { |v| v =~ /.\_area/  }.each do |method_name|
        define_method method_name do
          if object.send(method_name).present?
            "#{object.send(method_name)} #{t('defaults.square_sign')}"
          else
            ''
          end
        end
      end
    end
  end
end
