ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:domain => 'yamadaforsenate.com',
:user_name => ENV["MAILER_USERNAME"],
:password => ENV["MAILER_PW"],
:authentication => "plain",
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'

}