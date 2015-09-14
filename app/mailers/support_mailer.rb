class SupportMailer < ActionMailer::Base
  default from: 'notifier@yamadaforsenate.com'
  default to: "mmyamada63@gmail.com"
    
    def support_email(name, email, phone, address, body, help)
        @name = name
        @email = email
        @phone = phone
        @address = address
        @body = body
        @help = help

        mail(from: email, subject: 'Support request', reply_to: email)
    end
end

