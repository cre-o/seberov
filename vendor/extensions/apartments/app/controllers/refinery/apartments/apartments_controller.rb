module Refinery
  module Apartments
    class ApartmentsController < ::ApplicationController
      before_action :find_all_apartments, except: [:by_price_list]
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @apartment in the line below:
        respond_to do |format|
          format.html { present(@page) }
          format.json { render json: @apartments, root: false }
        end
      end

      def show
        @apartment = Apartment.includes(:apartment_floors).find(params[:id])
        @apartment = ApartmentDecorator.decorate(@apartment)

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @apartment in the line below:
        present(@page)
      end

      def by_parameters
        present(@page)
      end

      def by_price_list
        @apartments = ApartmentsDecorator.decorate(Apartment.active.by_position)

        respond_to do |format|
          format.html { render :by_price_list, layout: 'blank' }
          format.pdf { render pdf: 'price-list-seberov',
                              show_as_html: params[:debug].present?,
                              zoom: 0.7,
                              lowquality: false,
                              layout: 'pdf.html.slim' }
        end
      end

      alias_method :price_list, :by_price_list

      def search
        raise 1
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
