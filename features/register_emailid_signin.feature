Feature: User Registration using Email Id
  As a new User 
  I want to be able to register 
  so that I don’t have to enter my details again
  

    Scenario: User registers and creates an account
        Given I am on the signup page
        And I fill in "Name" with "udit"
        And I fill in "University" with "Auckland University of Technology"
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "abcdefgh"
        And I fill in "Confirmation" with "abcdefgh"
        When I press "Sign up"
        Then I am on the homepage
        And page should "alert-success" stating "Welcome! You have signed up successfully."

    Scenario: User registers with already registered id
#        Given I have an account with username "udit@serler.com"
        And I am on the signup page
        And I fill in "Name" with "udit"
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "abcdefgh"
        And I fill in "Confirmation" with "abcdefgh"
        When I press "Sign up"
        Then page should "alert-failure" stating "Email has already been taken"
        

      Scenario: User registers with wrong password size 
        Given I am on the signup page
        And I fill in "Name" with "udit"
        And I fill in "Email" with "udi@udit.udi"
        And I fill in "Password" with "abc"
        And I fill in "Confirmation" with "abc"
        When I press "Sign up"
        Then page should have alert message "Password is too short "
        
      Scenario: user is already registered and signs in with valid details
        Given I have an account with username "udit@serler.com"
        And I am on the signin page
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "udit@serler.com"
        When I press "Sign in"
        Then I am on the homepage
        Then page should "alert-success" stating "Signed in successfully."

      Scenario: user tries to sign in with invalid credentials
        Given I am on the signin page
        And I fill in "Email" with "udit@serler.com"
        And I fill in "Password" with "udit@serler.com"
        When I press "Sign in"
        Then page should have alert message "Invalid email or password."
        
      
      