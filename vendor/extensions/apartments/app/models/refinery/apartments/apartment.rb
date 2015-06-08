module Refinery
  module Apartments
    class Apartment < Refinery::Core::BaseModel
      STATES = %w(active reserved sold)
      BLOCKS = %w(a b c d)

      self.table_name = 'refinery_apartments'
      has_many :apartment_floors, dependent: :destroy
      belongs_to :photo, :class_name => '::Refinery::Image'


      scope :active, -> { where(state: 'active') }
      scope :by_expensiveness, -> { order(price: :desc) }
      scope :by_position, -> { order(position: :asc) }

      scope :block_a, -> { where('LOWER(block) = :letter', letter: 'a') }
      scope :block_b, -> { where('LOWER(block) = :letter', letter: 'b') }
      scope :block_c, -> { where('LOWER(block) = :letter', letter: 'c') }
      scope :block_d, -> { where('LOWER(block) = :letter', letter: 'd') }

      accepts_nested_attributes_for :apartment_floors, :reject_if => :all_blank, :allow_destroy => true

      validates :unit_id, presence: true, uniqueness: true
      validates :block, presence: true, inclusion: { in: BLOCKS, case_insensitive: true, message: "Not in #{BLOCKS} list" }
      validates :floor, presence: true, numericality: true
      validates :total_floors, presence: true, numericality: true
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
