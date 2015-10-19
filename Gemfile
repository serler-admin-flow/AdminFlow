source 'https://rubygems.org'
ruby '2.2.1'
gem 'rails', '4.2.4'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

# Rails stuff that i like to use
gem 'simple_form'
gem 'rails-footnotes', '>= 3.7.9', :group => :development
# add protected variables
gem 'protected_attributes'
gem 'sdoc', '~> 0.4.0', group: :doc

#use hml as the main html interpreter
gem 'haml-rails'
group :development, :test do
  gem 'byebug'
end
group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
gem 'bootstrap-sass'
gem 'devise'
group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'rails_layout'
  gem 'capybara'
  gem 'pg'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end