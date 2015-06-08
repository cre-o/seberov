module Refinery
  module Apartments
    class ApartmentsDecorator < Draper::CollectionDecorator

      def most_expensive
        Refinery::Apartments::Apartment.by_expensiveness.first
      end

      Refinery::Apartments::Apartment::BLOCKS.each do |letter|
        define_method("block_#{letter}") do
          object.send("block_#{letter}")
        end
      end
    end
  end
end
