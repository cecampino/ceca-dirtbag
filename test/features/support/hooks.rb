
Before do
end

After do |scenario|
  if scenario.failed?
    take_screenshot(scenario)
  end
end
