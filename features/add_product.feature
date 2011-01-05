Feature: Managing products
    In order to earn money and make my client happy
    As an admin
    I want to add and remove products

Scenario: Adding a product
    Given I have no products
    And I am logged in as an admin
    And there is a unit named "kg" defined
    And there is a category "cookies" defined   
    And I am on the admin home page
    When I follow "New product"
    And I fill in "Name" with "Kokosanka"
    And I fill in "Description" with "Truly delicious"
    And I fill in "Price" with "12.50"
    And I select "kg" from "Unit"
    And I select "cookies" from "Category"
    And I press "Post"
    Then I should be on "the admin home page"
    And I should see "Kokosanka"
    And I should have 1 product    
