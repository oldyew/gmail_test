module GmailTest
  class SignIn < Page::Base
    page_url { 'https://gmail.com' }

    element(:email) { browser.text_field(id: 'identifierId') }
    element(:password) { browser.text_field(class: 'whsOnd zHQkBf') }
    element(:next) { browser.button(id: 'identifierNext') }

    def authenticate(data)
      fill_form(data)
      next.click
    end
  end
end
