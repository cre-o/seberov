module Refinery
  module Apartments
    class Apartment < Refinery::Core::BaseModel
      self.table_name = 'refinery_apartments'
      has_many :apartment_floors


      validates :block, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:unit_id]

    end
  end
end
