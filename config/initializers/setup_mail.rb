ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => '587',
    :authentication => :plain,
    :user_name => 'serlergamma@gmail.com',
    :password => 'teamgamma',
    :domain => 'smtp.gmail.com',
    :enable_starttls_auto => true,
    :tls => true
}