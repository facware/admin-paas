class AccountDeviseMailerPreview < ActionMailer::Preview
    def confirmation_instructions
        AccountDeviseMailer.confirmation_instructions(Account.first, "faketoken", {})
    end

    def reset_password_instructions
        AccountDeviseMailer.reset_password_instructions(Account.first, "faketoken", {})
    end

    def unlock_instructions
        AccountDeviseMailer.unlock_instructions(Account.first, "faketoken", {})
    end
end
