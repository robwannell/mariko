class ContactMailer < ActionMailer::Base
  default from: 'notifier@yamadaforsenate.com'
          
  
  default to: "mmyamada63@gmail.com"

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(subject: 'Contact message', reply_to: email)
    end
end
