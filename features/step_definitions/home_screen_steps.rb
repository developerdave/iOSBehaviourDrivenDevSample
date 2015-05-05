Given(/^I am on the Quiz Screen$/) do
  element_exists("label accessibilityLabel:'question-label'")
end

When(/^I view a question$/) do
  macro 'I touch "show-question-button"'
end

Then(/^a question is displayed$/) do
  results = query "label accessibilityLabel:'question-label'"

  results.each do | result |
    puts result
  	expect( result['text'].length ).to be > 0
  end
end

# Then(/^the answer is blank$/) do
#   query_results = query "label accessibilityLabel:'answer-label'"

#   query_results.each do | result |
#   	expect( result['text']).to be "???"
#   end
# end