Refinery::Apartments::Apartment.class_eval do
  include ActionView::Helpers::NumberHelper

  def price
    number_with_precision(super, precision: 0)
  end
end
