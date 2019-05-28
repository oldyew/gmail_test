module GmailTest
  class Main < Page::Base
    element(:titles) { |text| browser.h3(text: /#{text}/) }

    def title?(text)
      titles(text).wait_until(&:present?)
      true
    rescue Watir::Wait::TimeoutError
      false
    end
  end
end
