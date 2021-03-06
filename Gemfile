source 'https://rubygems.org'

#ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'active_model_serializers'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'cocoon' # easy nested forms
gem 'simple_form' # forms

# Translations
gem 'globalize', '~> 5.0.0'


# Decoration logic
gem 'draper'

# Template engines
gem 'slim-rails'
# CSS frameworks
gem 'foundation-rails'
# CSS Mixins
gem 'bourbon'
# Javascript features
gem 'angularjs-rails', '~> 1.3.15'
gem 'lodash-rails' # javascript features
gem 'gon' # passing variables into JS
# Images lazy loading
gem 'lazyload-rails'
# Images zoomIn
gem 'magnific-popup-rails', '~> 0.9'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Rails routes inside JS
gem 'js-routes'

# PDF generator
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

# Use Unicorn as the app server
# gem 'unicorn'
# Use Puma as the app server
gem 'puma'

gem 'semantic-ui-sass'

# Use Capistrano for deployment
#gem 'capistrano-rails', group: :development

# Misc
gem 'active_link_to'
gem 'rails_config'
gem 'i18n_data'

# Admin interface
gem 'refinerycms', git: 'https://github.com/cre-o/refinerycms', branch: '3.0'
# Add support for searching inside Refinery's admin interface.
gem 'refinerycms-acts-as-indexed', ['~> 2.0', '>= 2.0.0']
# Add support for Refinery's custom fork of the visual editor WYMeditor.
gem 'refinerycms-wymeditor', ['~> 1.0', '>= 1.0.6']
# Own engine
gem 'refinerycms-apartments', path: 'vendor/extensions'
# i18n support
gem 'refinerycms-i18n'

# Font icons
gem 'font-awesome-rails'

group :production do
  # See https://github.com/rails/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
end

group :development do
  gem 'guard', '>= 2.2.2', require: false
  gem 'guard-livereload',  require: false
  gem 'rack-livereload'
  gem 'rb-fsevent', require: false

  gem 'rename' # Renaming project
  gem 'better_errors'       # Better errors for debugging
  gem 'quiet_assets'
  #gem 'rails-footnotes', '>= 4', '<5' # Footnotes with dev information
  gem 'pry-rails'           # Interactive debuging shell
  #gem 'capistrano', '>= 2', '< 3', require: false # "Deploying standard for ruby"
  #gem 'capistrano-deploy'   # Additional libraries
  #gem 'rvm-capistrano'      # RVM integration
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
