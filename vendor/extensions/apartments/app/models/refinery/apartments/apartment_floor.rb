module Refinery
  module Apartments
    class ApartmentFloor < Refinery::Core::BaseModel
      self.table_name = 'refinery_apartment_floors'
      has_one :apartment

      validates :floor_number, presence: true, uniqueness: { scope: :apartment_id }

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
    end
  end
end
