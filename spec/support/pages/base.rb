module GmailTest
  module Page
    class Base < WatirDrops::PageObject

      element(:titles) { |text| browser.h1(text: /#{text}/) }

      def title?(text)
        titles(text).wait_until(&:present?)
        true
      rescue Watir::Wait::TimeoutError
        false
      end
    end
  end
end
