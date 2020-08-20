require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "D://Driver//chromedriver.exe"

opt = Selenium::WebDriver::Chrome::Options.new
opt.add_option("debuggerAddress", "localhost:9291")
driver = Selenium::WebDriver.for :chrome, options:opt
driver.get("https://www.facebook.com/")

if(driver.current_url == "https://www.facebook.com/")
  puts "Login Bypassed"
  puts "Test Passed"
elsif (driver.current_url == "https://www.facebook.com/login")
  puts "Login didnt bypassed"
  puts "Test Failed"
else
  puts "Something Went Wrong.Please check it once"
end

