# As a user
# I want to answer another user's question
# So that I can help them solve their problem
#
# Acceptance Criteria
#
# - I must be on the question detail page
# - I must provide a description that is at least 50 characters long
# - I must be presented with errors if I fill out the form incorrectly



require 'rails_helper'

feature "user answers a question" do
  xscenario "answers another users question to help solve their problem" do

    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    user_answer = "Ruby is a great first time programming language!  The syntax is pretty straight forward and once you get the hang out it you can create some pretty cools apps, like this one."
    visit questions_path
    click_link "Whats your favorite color?"
    fill_in 'Answer', with: user_answer
    click_button 'Submit Answer'
    # expect(page).to have_content("#{myquestion.id}.) Whats your favorite color? Description: I'd like to know your favorite color, mine is red." )

  end


  xscenario "user unsuccessfully answers a question due to not writing a long enough description" do
    # error for too short of a title and description
    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    user_answer = "Yes"
    visit questions_path
    click_link "Whats your favorite color?"
    fill_in 'Answer', with: user_answer
    click_button 'Submit Answer'

    expect(page).to have_content("Answer is too short (minimum is 50 characters)")


  end
end
