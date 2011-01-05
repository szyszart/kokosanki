Feature: Ordering products
    In order to have something delicious to eat
    As a user
    I want to buy kokosanki
    
Scenario: Buying kokosanki
    Given I am logged in as a user
    And there are some products defined
    When I choose the "Ciastka" category
    And I add "Kokosanka" to cart
    Then I should see "1 x Kokosanka"           
