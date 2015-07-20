Refinery::I18n.configure do |config|
  config.default_locale = :cs
  config.current_locale = :cs
  config.default_frontend_locale = :cs
  config.frontend_locales = [:en, :cs, :ru]
  config.locales = {:en=>"English", :ru=>"Русский",:cs=>"Česky"}
end
