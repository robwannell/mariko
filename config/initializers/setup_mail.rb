ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "mail.meltemiweb.com",
:port => 26,
:user_name => "mailer+meltemiweb.com",
:password => "Meltemi808",
:authentication => "plain",
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'

}