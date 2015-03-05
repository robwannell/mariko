ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["MAILER_USERNAME"],
  :password => ENV["MAILER_PW"],
  :domain => 'meltemiweb.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}