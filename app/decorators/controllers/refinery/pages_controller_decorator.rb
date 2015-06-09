Refinery::PagesController.class_eval do
  before_action :decorate_location, if: :location_page?

  protected

    def decorate_location
      gon.push({
        map_marker_icons: {
          big: {
            medicine: ActionController::Base.helpers.asset_path('location/markers/medicine-l.png'),
            autobus: ActionController::Base.helpers.asset_path('location/markers/autobus-l.png'),
            relax: ActionController::Base.helpers.asset_path('location/markers/relax-l.png'),
            school: ActionController::Base.helpers.asset_path('location/markers/school-l.png'),
            administration: ActionController::Base.helpers.asset_path('location/markers/administration-l.png'),
            police: ActionController::Base.helpers.asset_path('location/markers/police-l.png'),
            library: ActionController::Base.helpers.asset_path('location/markers/library-l.png'),
            playground: ActionController::Base.helpers.asset_path('location/markers/playground-l.png'),
            sport: ActionController::Base.helpers.asset_path('location/markers/sport-l.png')
          },
          grey: {
            medicine: ActionController::Base.helpers.asset_path('location/markers/medicine-grey-s.png'),
            autobus: ActionController::Base.helpers.asset_path('location/markers/autobus-grey-s.png'),
            relax: ActionController::Base.helpers.asset_path('location/markers/relax-grey-s.png'),
            school: ActionController::Base.helpers.asset_path('location/markers/school-grey-s.png'),
            administration: ActionController::Base.helpers.asset_path('location/markers/administration-grey-s.png'),
            police: ActionController::Base.helpers.asset_path('location/markers/police-grey-s.png'),
            library: ActionController::Base.helpers.asset_path('location/markers/library-grey-s.png'),
            playground: ActionController::Base.helpers.asset_path('location/markers/playground-grey-s.png'),
            sport: ActionController::Base.helpers.asset_path('location/markers/sport-grey-s.png')
          }
        }
      })
    end

    def location_page?
      @page.view_template == 'location'
    end
end
