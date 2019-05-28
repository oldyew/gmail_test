module GmailTest
  class SignIn < Page::Base

    page_url { "https://gmail.com" }


    # Specify full Watir locator inside block
    # element(:foo) { browser.div(id: 'foo') }

    element(:email) {  }
    element(:password) {  }

  end
end
