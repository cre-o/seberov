module Refinery
  module Apartments
    ApartmentsController.class_eval do
      #before_action :abc

      def application_form
        raise 1
      end

      private

        def abc
          raise 1
        end
    end
  end
end
