require 'capybara/rspec'
require 'selenium-webdriver'

# remote chrome driver
if ENV['SELENIUM_DRIVER_URL'].blank?
  # headless chrome driver
  Capybara.register_driver :chrome_headless do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--disable-gpu')
    options.add_argument('--window-size=1400,1400')

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
  end
else
  Capybara.register_driver :chrome_headless do |app|
    url = ENV.fetch('SELENIUM_DRIVER_URL')
    options = ::Selenium::WebDriver::Chrome::Options.new()
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--disable-gpu')
    options.add_argument('--window-size=1400,1400')

    Capybara::Selenium::Driver.new(app, browser: :remote, url: url, options: options)
  end
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
