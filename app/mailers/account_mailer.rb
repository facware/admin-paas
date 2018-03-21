class AccountMailer < ActionMailer::Base
    include Devise::Mailers::Helpers
    puts "CHINO ========= DEVISE CONFIRMATION =========   AccountMailer"
    helper :application # gives access to all helpers defined within `application_helper`.
    include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
    #default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
    default from: "contact@facware.com"

    def confirmation_instructions(record, token, opts={})
        puts "record"
        puts record.email
        @token = token
        opts[:reply_to] = '<noreply>@facware.com'
        opts[:bcc] = ["luis.espinoza@facware.com", "joel.melendez@facware.com"]
        devise_mail(record, :confirmation_instructions, opts)
        #headers["Custom-header"] = "Bar"
        #opts[:from] = 'contact@facware.com'
        #
        #super
    end

    def welcome_email(account)
        @account = user
        mail(to: @account.email, subject: 'Welcome to My Awesome Site')
    end
end

#class AccountDeviseMailer < Devise::Mailer
#    puts "CHINO ========= DEVISE CONFIRMATION"
#    helper :application # gives access to all helpers defined within `application_helper`.
#    include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
#    default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

#    def confirmation_instructions(record, token, opts={})
#        headers["Custom-header"] = "Bar"
#        opts[:from] = 'contact@facware.com'
#        opts[:reply_to] = 'luis.espinoza@facware.com.com'
#        super
#    end
#end
