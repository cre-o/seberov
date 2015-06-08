module Refinery
  module Apartments
    ApartmentsController.class_eval do
      before_action :decorate_apartments, only: [:by_parameters]

      def application_form

      end

      private

        def decorate_apartments
          @apartments = ApartmentsDecorator.decorate(@apartments)
        end
    end
  end
end
