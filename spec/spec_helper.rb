require 'watir_drops'
require 'watir_model'
require 'require_all'
require_rel 'support/data'
require_rel 'support/pages'
require_rel 'support/site'

include GmailTest
include Page

RSpec.configure do |config|
  config.before(:each) do
    @browser = Watir::Browser.new :chrome
    Base.browser = @browser
  end

  config.after(:each) do
    @browser.quit
  end
end
