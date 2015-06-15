module Refinery
  module Apartments
    class ApartmentsDecorator < Draper::CollectionDecorator

      def most_expensive_price
        sort_by { |obj| obj.price.to_i }
        .last.object.price
      end

      def max_floor_space
        sort_by { |obj| obj.apartment_area.to_i }
        .last.object.apartment_area
      end

      def max_floor
        sort_by { |obj| obj.floor.to_i }
        .last.object.floor
      end

      Refinery::Apartments::Apartment::BLOCKS.each do |letter|
        define_method("block_#{letter}") do
          object.send("block_#{letter}")
        end
      end
    end
  end
end
