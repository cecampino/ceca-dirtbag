
Before do
end

After do |scenario|
  if scenario.failed?
    #Takes a screen shot with scenario name
    take_screenshot(scenario)
    #Includes a screen shot on the failed scenario
    embed_screenshot_on_results
  end
end
