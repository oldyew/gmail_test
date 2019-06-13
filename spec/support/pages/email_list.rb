module GmailTest
  class EmailList < Page::Base
    element(:compose) { browser.element(gh: 'cm') }
    element(:to) { browser.element(name: 'to') }
    element(:subject) { browser.element(name: 'subjectbox') }
    element(:body) { browser.element(class: ['Am Al editable LW-avf']) }
    element(:send) { browser.element(class: ['T-I J-J5-Ji aoO v7 T-I-atl L3']) }
    element(:titles) { |text| browser.element(text: /#{text}/) }


    def new_email
      compose.click
      sleep 3
    end

    def input_to(data)
      to.send_keys(data.email)
    end

    def input_subject(data)
      subject.send_keys(data.subject)
    end

    def input_body(data)
      body.send_keys(data.body)
    end

    def send_email
      send.click
      sleep 3
    end

    def email_received?(text)
      titles(text).wait_until(&:present?)
      true
    rescue Watir::Wait::TimeoutError
      false

    end
  end
end
