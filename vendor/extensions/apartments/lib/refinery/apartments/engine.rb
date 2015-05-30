module Refinery
  module Apartments
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Apartments

      config.to_prepare do
        Dir.glob(Rails.root + "app/serializers/**/*_serializer*.rb").each do |c|
          require_dependency(c)
        end

        Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
          require_dependency(c)
        end
      end

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
