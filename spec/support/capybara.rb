require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.register_driver :chrome_headless do |app|
  url = ENV.fetch(['SELENIUM_DRIVER_URL'], nil)
  browser = url ? :remote : :chrome

  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--disable-gpu')
  options.add_argument('--window-size=1400,1400')
  # FIXME if Chrome 122 has released
  options.browser_version = '120'

  Capybara::Selenium::Driver.new(app, browser: browser, url: url, options: options)
end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    if ENV['SELENIUM_DRIVER_URL'].present?
      Capybara.server_host = IPSocket.getaddress(Socket.gethostname)
      Capybara.app_host = "http://#{Capybara.server_host}"
    end

    driven_by :chrome_headless
  end
end
