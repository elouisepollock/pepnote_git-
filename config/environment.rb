# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["sendgrid_user_name"],
  :password => ENV["sendgrid_password"],
  :domain => 'https://git.heroku.com/pepnote1.git',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

