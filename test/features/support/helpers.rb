
def open_in_browser(url_string)
  visit url_string
end

def get_today_date
  time = Time.new
  today = time.strftime("%Y/%m/%d")
  return today
end

def take_screenshot(scenario_name)
  scenario_name = scenario.name.gsub(/[^w\-]/,' ')
  puts "scenario_name: '#{scenario_name}'"
end

def embed_screenshot_on_results
  encoded_img = page.driver.browser.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}",'image/png')
end
