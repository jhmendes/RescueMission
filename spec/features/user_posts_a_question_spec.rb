# As a user
# I want to post a question
# So that I can receive help from others
#
# Acceptance Criteria
#
# - I must provide a title that is at least 20 characters long
# - I must provide a description that is at least 50 characters long
# - I must be presented with errors if I fill out the form incorrectly





require 'rails_helper'

feature "posts a question" do
  scenario "user successfully posts a question" do
    myquestion = 'What are you favorite aspects of the Ruby programming language?'
    mydescription = 'I really enjoy the simplcity of the language and how fluid it looks when written well.'

    visit questions_path
    click_link "Post a Question"
    fill_in 'Title', with: myquestion
    fill_in 'Description', with: mydescription

    expect(page).to have_content(myquestion)
    expect(page).to have_content(mydescription)
  end

  xscenario "user unsuccessfully due to insufficient form information" do
    # error for too short of a title and description

    # myquestion = Question.create(title: "Whats your favorite color?", description: "I'd like to know your favorite color, mine is red.")
    # visit questions_path
    # expect(page).to have_content(myquestion.title)

  end
end
