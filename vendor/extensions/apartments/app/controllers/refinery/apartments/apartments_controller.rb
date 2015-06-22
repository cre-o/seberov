module Refinery
  module Apartments
    class ApartmentsController < ::ApplicationController
      before_action :find_all_apartments, only: [:index]
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
        @apartments_json = generate_json
        @apartments_decorator = ApartmentsDecorator.decorate(Apartment.active.by_position)
        present(@page)
      end

      def by_price_list
        @apartments = ApartmentsDecorator.decorate(Apartment.active.without_d.by_position)

        respond_to do |format|
          format.html { render :by_price_list }
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

      # Dirty hacking angular
      def generate_json
        array = []
        apartments =  Apartment.active.by_position
        apartments.each do |a|
          json_decorator = ApartmentJsonDecorator.decorate(a)
          array << a.as_json.merge!({
            'photo_tag' => json_decorator.photo_tag,
            'rooms' => json_decorator.rooms,
            'price_decorated' => json_decorator.price_decorated,
            'price_t' => json_decorator.price_t,
            'layout_t' => json_decorator.layout_t,
            'floor_t' => json_decorator.floor_t,
            'total_floors_t' => json_decorator.total_floors_t,
            'floors_t' => json_decorator.floors_t,
            'floors' => json_decorator.floors,
            'balcony_terace_area_decorated' => json_decorator.balcony_terace_area_decorated,
            'balcony_terace_area_t' => json_decorator.balcony_terace_area_t,
            'front_yard_area_decorated' => json_decorator.front_yard_area_decorated,
            'front_yard_area_t' => json_decorator.front_yard_area_t,
            'apartment_area_decorated' => json_decorator.apartment_area_decorated,
            'apartment_area_t' => json_decorator.apartment_area_t
          })
        end
        array.to_json
      end

      def find_all_apartments
        @apartments = Apartment.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/apartments").first
      end

    end
  end
end
