class ContactMailer < ActionMailer::Base
    default to: "info@yamadaforsenate.net"

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(from: email, subject: 'Contact Request')
    end
end
