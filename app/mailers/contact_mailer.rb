class ContactMailer < ActionMailer::Base
  default from: 'notifier@yamadaforsenate.com',
          reply_to: email
  
  default to: "rob@meltemiweb.com"

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(subject: 'Contact Request')
    end
end
