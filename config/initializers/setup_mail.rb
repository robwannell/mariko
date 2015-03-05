ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "mail.meltemiweb.com",
:port => 26,
:domain => 'meltemiweb.com',
:user_name => ENV["MAILER_USERNAME"],
:password => ENV["MAILER_PW"],
:authentication => "plain",
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'
}