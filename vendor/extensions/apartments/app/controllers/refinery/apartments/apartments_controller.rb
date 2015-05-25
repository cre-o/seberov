module Refinery
  module Apartments
    class ApartmentsController < ::ApplicationController

      before_action :find_all_apartments
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @apartment in the line below:
        present(@page)
      end

      def show
        @apartment = Apartment.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @apartment in the line below:
        present(@page)
      end

    protected

      def find_all_apartments
        @apartments = Apartment.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/apartments").first
      end

    end
  end
end
