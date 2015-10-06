Feature: User Registration using Email Id
  As a new User 
  I want to be able to register 
  so that I don’t have to enter my details again

    Scenario: User registers and creates an account
        Given I am on the signup page
        And I fill in "Name" with "udit"
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "abcdefgh"
        And I fill in "Confirmation" with "abcdefgh"
        When I press "Sign up"
        Then I am on the homepage
        And page should "alert-success" stating "Welcome! You have signed up successfully."

