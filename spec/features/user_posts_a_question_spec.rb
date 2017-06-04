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
    click_button('Create Question')

    expect(page).to have_content(myquestion)
    expect(page).to have_content(mydescription)
  end

  scenario "user unsuccessfully posts question due to insufficient form information" do
    # error for too short of a title and description
    myquestion = "Hello?"
    mydescription = "Too short"
    visit questions_path
    click_link "Post a Question"
    fill_in 'Title', with: myquestion
    fill_in 'Description', with: mydescription
    click_button('Create Question')

    expect(page).to have_content("Title is too short (minimum is 20 characters)")
    expect(page).to have_content("Description is too short (minimum is 50 characters)")

  end

  scenario "user clicks create question button without filling in any information" do
    visit questions_path
    click_link "Post a Question"
    click_button('Create Question')

    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Description can't be blank")

  end
end
