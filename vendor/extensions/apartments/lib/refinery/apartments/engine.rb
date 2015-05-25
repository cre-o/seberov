module Refinery
  module Apartments
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Apartments

      engine_name :refinery_apartments

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "apartments"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.apartments_admin_apartments_path }
          plugin.pathname = root
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Apartments)
      end
    end
  end
end
