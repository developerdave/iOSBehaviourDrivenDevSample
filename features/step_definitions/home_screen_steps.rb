Given(/^I am on the Quiz Screen$/) do
  element_exists("label accessibilityLabel:'question-label'")
end

Given(/^I am viewing a question$/) do
  steps %Q{
    When I view a question
  }
end

When(/^I view a question$/) do
  macro 'I touch "show-question-button"'

  store_currently_displayed_question
end

When(/^I view the next question$/) do
  steps %Q{
    When I view a question
  }
end

Then(/^a question is displayed$/) do
  results = query "label accessibilityLabel:'question-label'"

  results.each do | result |
  	expect( result['text'].length ).to be > 0
  end
end

Then(/^the answer is not displayed$/) do
  query_results = query "label accessibilityLabel:'answer-label'"

  query_results.each do | result |
    expect( result['text']).to eq("???")
  end
end

Then(/^a new question is displayed$/) do
  expect(@last_displayed_question).to_not eq(@current_question)
end

def get_currently_displayed_question
  results = query "label accessibilityLabel:'question-label'"
  results[0]['text']
end

def store_currently_displayed_question
  @last_displayed_question = @current_question
  @current_question = get_currently_displayed_question
end

# Then(/^the answer is blank$/) do
#   query_results = query "label accessibilityLabel:'answer-label'"

#   query_results.each do | result |
#   	expect( result['text']).to include("???"
#   end
# end