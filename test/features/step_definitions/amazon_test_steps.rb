$amz = AmazonSearch.new

When /^the user searches in amazon for: (.*)$/ do |search_value|
 $amz.search_for(search_value)
end

Then /^the result section shows at least (\d+) related items?$/ do |related_results|
  value = $amz.get_quantity_of_results_on_page
  expect(value).to be > related_results.to_i
  puts "Results on this page: '#{value}'"
end

Then /^the total results value is greater than (\d+)$/ do |expected_base|
  value = $amz.get_total_results_value
  puts "Total results: '#{value}'"
  expect(value).to be > expected_base.to_i
end
