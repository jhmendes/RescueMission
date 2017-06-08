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
    click_link "Is Ruby difficult to learn?"
    fill_in 'Answer', with: user_answer
    click_button 'Submit Answer'

    expect(page).to have_content(user_answer)
    # continue here! 6-6-17
    # submit answer should sent a post request and create an Answer object for Answers table!!!
    # create the answers table, migration, etc, then pass these tests
    # from there, add some links/touch up pages so they are more clear
    # GOAL IS TO FINISH UP TO "NON CORE" USER STORIES BY THE END OF THE WEEK!
    # ask Cary for help on the non core stories, where to look, etc
  end


  scenario "user unsuccessfully answers a question due to not writing a long enough description" do
    # error for too short of a title and description
    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    user_answer = "Yes"
    visit questions_path
    click_link "Is Ruby difficult to learn?"
    fill_in 'Answer', with: user_answer
    click_button 'Submit Answer'

    expect(page).to have_content("Answer is too short (minimum is 50 characters)")


  end
end
