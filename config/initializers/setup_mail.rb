ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:user_name => 'meltemiweb@gmail.com',
:password => 'meltemi808',
:authentication => "plain",
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'

}