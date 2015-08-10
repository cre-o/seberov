module Refinery
  module Apartments
    class Apartment < Refinery::Core::BaseModel
      STATES = %w(active reserved sold)
      BLOCKS = %w(a b c) # block "D" was sold out

      self.per_page = 100 # will_paginate
      self.table_name = 'refinery_apartments'
      has_many :apartment_floors, dependent: :destroy
      belongs_to :photo, :class_name => '::Refinery::Image'


      scope :active, -> { where(state: 'active') }
      scope :by_expensiveness, -> { order(price: :desc) }
      scope :by_position, -> { order(position: :asc) }
      scope :by_unit_id, -> { order(unit_id: :asc) }

      scope :block_a, -> { where(block: 'a') }
      scope :block_b, -> { where(block: 'b') }
      scope :block_c, -> { where(block: 'c') }
      scope :block_d, -> { where(block: 'd') }
      scope :without_d, -> { where.not(block: 'd') }
      scope :total, -> { all.active.size }

      accepts_nested_attributes_for :apartment_floors, :reject_if => :all_blank, :allow_destroy => true

      validates :unit_id, presence: true, uniqueness: true
      validates :block, presence: true, inclusion: { in: BLOCKS, case_insensitive: true, message: "Not in #{BLOCKS} list" }
      validates :floor, presence: true, numericality: true
      validates :total_floors, presence: true, numericality: true
      validates :parking_price, numericality: true
      validates :state, inclusion: { in: Refinery::Apartments::Apartment::STATES }

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:unit_id]

      before_validation :downcase

      def downcase
        self.block = block.downcase
      end
    end
  end
end
