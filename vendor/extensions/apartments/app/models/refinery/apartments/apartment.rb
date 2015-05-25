module Refinery
  module Apartments
    class Apartment < Refinery::Core::BaseModel
      self.table_name = 'refinery_apartments'
      has_many :apartment_floors, dependent: :destroy
      belongs_to :photo, :class_name => '::Refinery::Image'

      accepts_nested_attributes_for :apartment_floors, :reject_if => :all_blank, :allow_destroy => true

      validates :unit_id, :presence => true
      validates :block, :presence => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:unit_id]
    end
  end
end
