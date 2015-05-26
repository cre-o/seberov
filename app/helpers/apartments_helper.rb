module ApartmentsHelper
  def breadcrumbs(apartment)
    "building #{apartment.block} > #{apartment.floor} > apt##{apartment.unit_id}"
  end
end
