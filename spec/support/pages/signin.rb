module GmailTest
  class SignIn < Page::Base
    page_url { 'https://gmail.com' }

    element(:email) { browser.text_field(id: 'identifierId') }
    element(:password) { browser.text_field(class: ['whsOnd zHQkBf']) }
    element(:submit) { browser.element(class: ["CwaK9"]) }

    def email_submit(data)
      email.set(data.email)
      submit.click
      sleep 3
    end

    def password_submit(data)
      password.set(data.password)
      submit.click
      sleep 10
    end
  end
end
