Feature: Test usage of cucumber with capybara

Scenario: Open Browser with provided url
Given A user access the url http://www.google.com
When the user searches in google for: cualquier cosa
Then I see the total results on the page
