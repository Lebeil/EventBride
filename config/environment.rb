# Load the Rails application.
require_relative 'application'
ActionMailer::Base.default :content_type => "text/html"

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#     :user_name => ENV['SENDGRID_LOGIN'],
#     :password => ENV['SENDGRID_PWD'],
#     :domain => 'https://event75-bride-rails.herokuapp.com/',
#     :address => 'smtp.sendgrid.net',
#     :port => 587,
#     :authentication => :plain,
#     :enable_starttls_auto => true
# }