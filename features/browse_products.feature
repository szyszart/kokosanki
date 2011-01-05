Feature: Browsing products
    In order to find out what the store has to offer
    As a user
    I want to browse products

Scenario: Searching for a product
    Given there is a product "Kokosanka" defined
    And I am not authenticated
    When I fill in "Szukaj" with "Kokosanka" 
    And I press "No to lecimy!"
    Then I should see "Kokosanka"
