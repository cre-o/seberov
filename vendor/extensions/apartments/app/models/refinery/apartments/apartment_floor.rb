module Refinery
  module Apartments
    class ApartmentFloor < Refinery::Core::BaseModel
      self.table_name = 'refinery_apartment_floors'
      belongs_to :apartment

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
