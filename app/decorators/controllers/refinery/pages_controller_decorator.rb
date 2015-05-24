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
            police: ActionController::Base.helpers.asset_path('location/markers/police-l'),
            library: ActionController::Base.helpers.asset_path('location/markers/library-l'),
            playground: ActionController::Base.helpers.asset_path('location/markers/playground-l'),
            sport: ActionController::Base.helpers.asset_path('location/markers/playground-l')
          },
          small: {
            medicine: ActionController::Base.helpers.asset_path('location/markers/medicine-s.png'),
            autobus: ActionController::Base.helpers.asset_path('location/markers/autobus-s.png'),
            relax: ActionController::Base.helpers.asset_path('location/markers/relax-s.png'),
            school: ActionController::Base.helpers.asset_path('location/markers/school-s'),
            administration: ActionController::Base.helpers.asset_path('location/markers/administration-s'),
            police: ActionController::Base.helpers.asset_path('location/markers/police-s'),
            library: ActionController::Base.helpers.asset_path('location/markers/library-s'),
            playground: ActionController::Base.helpers.asset_path('location/markers/playground-s'),
            sport: ActionController::Base.helpers.asset_path('location/markers/playground-s')
          }
        }
      })
    end

    def location_page?
      action_name == 'show' && params[:path] == 'location'
    end
end
