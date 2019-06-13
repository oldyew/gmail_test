ENV['USE_DOCKER'] ||= 'false'

require 'watir_drops'
require 'watir_model'
require 'require_all'
require 'webdrivers'
require 'watir'

require_rel 'support/data'
require_rel 'support/pages'
require_rel 'support/site'
require_rel 'support/docker_helpers' if ENV['USE_DOCKER'] == 'true'

include GmailTest
include Page

RSpec.configure do |config|
  config.include SauceHelpers if ENV['USE_SAUCE'] == 'true'
  config.include DockerHelpers if ENV['USE_DOCKER'] == 'true'

  config.before(:each) do
    @browser = if ENV['USE_DOCKER'] == 'true'
                 url = 'http://' + HUB_HOST + ':4444/wd/hub'
                 Watir::Browser.new :chrome, timeout: 120, url: url
               else
                 Watir::Browser.new :chrome
               end
    @browser.window.maximize
    Base.browser = @browser
    # Site.base_url = ENV['BASE_URL']
  end

  # config.after(:suite) do
  #   @browser.close
  # end
end
