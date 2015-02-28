class SupportMailer < ActionMailer::Base
    default to: "rob@meltemiweb.com"

    def support_email(name, email, phone, address, body, help)
        @name = name
        @email = email
        @phone = phone
        @address = address
        @body = body
        @help = help

        mail(from: email, subject: 'Support Request')
    end
end