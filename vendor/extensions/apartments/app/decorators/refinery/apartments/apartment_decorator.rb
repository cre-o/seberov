module Refinery
  module Apartments
    class ApartmentDecorator < Draper::Decorator
      include ActionView::Helpers::TranslationHelper
      include ApartmentDecorations
      delegate_all
      decorates_association :apartment_floors

      # Dynamic dimensions assign
      Apartment.column_names.select { |v| v =~ /.\_area/  }.each do |method_name|
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
