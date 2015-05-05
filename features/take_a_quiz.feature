Feature: Take a quiz
As a user
I want to take a quiz
So I can improve my general knowledge

Scenario: View quiz question
Given I am on the Quiz Screen
When I view a question
Then a question is displayed
And the answer is not displayed

Scenario: View next question
Given I am on the Quiz Screen
And I am viewing a question
When I view the next question
Then a new question is displayed
And the answer is blank

Scenario: View answer
Given I am on the Quiz Screen
And I am viewing a question
When I give up and view the answer
Then the answer is displayed

Scenario: View next question after viewing an answer
Given I am on the Quiz Screen
And I am viewing a question with answer displayed
When I view the next question
Then a new question is displayed
And the answer is blank




