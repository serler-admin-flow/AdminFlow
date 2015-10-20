# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configuration for using SendGrid on Heroku
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'v.boss7@gmail.com',
  :password       => 'VI.GOOGLE',
  :domain         => '[lets get this party started!.com]',
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp