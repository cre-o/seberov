Refinery::PagesController.class_eval do
  before_action :decorate_location, if: :location_page?

  protected

    def decorate_location
      gon.push({
        map_marker_icons: {
          big: {
            medicine: ActionController::Base.helpers.asset_path('location/icons/medicine-l.png'),
            autobus: ActionController::Base.helpers.asset_path('location/icons/autobus-l.png'),
            relax: ActionController::Base.helpers.asset_path('location/icons/relax-l.png'),
            school: ActionController::Base.helpers.asset_path('location/icons/school-l.png'),
            administration: ActionController::Base.helpers.asset_path('location/icons/administration-l.png'),
            police: ActionController::Base.helpers.asset_path('location/icons/police-l'),
            library: ActionController::Base.helpers.asset_path('location/icons/library-l'),
            playground: ActionController::Base.helpers.asset_path('location/icons/playground-l'),
            sport: ActionController::Base.helpers.asset_path('location/icons/playground-l')
          },
          small: {
            medicine: ActionController::Base.helpers.asset_path('location/icons/medicine-s.png'),
            autobus: ActionController::Base.helpers.asset_path('location/icons/autobus-s.png'),
            relax: ActionController::Base.helpers.asset_path('location/icons/relax-s.png'),
            school: ActionController::Base.helpers.asset_path('location/icons/school-s'),
            administration: ActionController::Base.helpers.asset_path('location/icons/administration-s'),
            police: ActionController::Base.helpers.asset_path('location/icons/police-s'),
            library: ActionController::Base.helpers.asset_path('location/icons/library-s'),
            playground: ActionController::Base.helpers.asset_path('location/icons/playground-s'),
            sport: ActionController::Base.helpers.asset_path('location/icons/playground-s')
          }
        }
      })
    end

    def location_page?
      action_name == 'show' && params[:path] == 'location'
    end
end
