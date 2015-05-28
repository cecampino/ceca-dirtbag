$gsp = GoogleSearch.new

Given /^A user access the url (.*)$/ do |url|
  open_in_browser(url)
end

When /^the user searches in google for: (.*)$/ do |search_value|
 $gsp.search_for(search_value)
end

Then /^I see the total results on the page$/ do
  value = $gsp.get_total_results_value
  puts "VALUE: '#{value}'"
  sleep 5
end
