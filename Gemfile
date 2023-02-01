source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.0.4', '>= 6.0.4.7'
# Use mysql2 as the database for Active Record
gem 'mysql2', '~> 0.5.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'tinymce-rails', '~> 6.3', '>= 6.3.1'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Auth
gem 'devise', '~> 4.8', '>= 4.8.1'

# # authorization gems
gem 'pundit', '~> 2.3'
gem 'rolify', '~> 6.0'

# view
gem 'simple_form', '~> 5.1'
gem 'rails-i18n', '~> 7.0', '>= 7.0.6'
# Toll
gem 'browser', '~> 5.3', '>= 5.3.1'
gem 'nokogiri', '~> 1.13', '>= 1.13.4'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'ed25519', '~> 1.3'
gem 'bcrypt_pbkdf', '~> 1.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-rails"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry', '~> 0.14.1'
  gem "capistrano", "~> 3.17", require: false
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.2', require: false
  gem 'capistrano-rbenv', '~> 2.2', require: false
  gem 'capistrano3-puma', '~> 5.2', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
