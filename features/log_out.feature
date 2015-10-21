Feature: User Logout
    As a User 
    I want to be able to logout of the system 
    so that others can’t use SERLER with my logon
  

      Scenario: user is already registered and signs in with valid details
        Given I have an account with username "udit@serler.com"
        And I am on the signin page
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "udit@serler.com"
        And I press "Sign in"
        And page should "alert-success" stating "Signed in successfully."
        And I am on the homepage
        When I click "Sign out"
        Then page should "alert-success" stating "Signed Out successfully."

      
      