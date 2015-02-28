Feature: Test results shown after a search on Amazon page

Scenario: As a user I can enter a search criteria and see related info in the result section
Given A user access the url http://www.amazon.com
When the user searches for: qa testing
Then the result section shows at least 1 related items
And the total results value is greater than 0

Scenario Outline: As a user I expect a minimum quantity of results for a given searched term
Given A user access the url http://www.amazon.com
When the user searches for: <search_term>
Then the total results value is greater than <expected_quantity>
Examples: Search for this terms expecting a minimum results
| search_term             | expected_quantity |
| Continuous Integration  | 1822              |
| Play Station 4          | 142680            |
| SDD 1TB                 | 32                |
