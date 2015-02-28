class SupportMailer < ActionMailer::Base
    default to: "rob@meltemiweb.com"

    def support_email(name, email, body, usename, coffee, lawnsign, gotv)
        @name = name
        @email = email
        @body = body
        @usename = usename
        @coffee = coffee
        @lawnsign = lawnsign
        @gotv = gotv

        mail(from: email, subject: 'Support Request')
    end
end