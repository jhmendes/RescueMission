# As a user
# I want to edit a question
# So that I can correct any mistakes or add updates
#
# Acceptance Criteria
#
# - I must provide valid information
# - I must be presented with errors if I fill out the form incorrectly
# - I must be able to get to the edit page from the question details page




require 'rails_helper'

feature "user edits a question" do
  scenario "user edits a specific question" do

    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    updated_title = "Is Ruby a good first programming language to learn?"
    updated_description = "I'm new to programming and would like to start off with a simple but effective language.  I heard Ruby is the way to go.  Any suggestions would be great!"
    visit questions_path
    click_link "Is Ruby difficult to learn?"
    click_link "Edit this Question"
    fill_in "Title", with: updated_title
    fill_in "Description", with: updated_description
    click_button 'Update Question'
    # the final page should be the show page or full questions page
    expect(page).to have_content(updated_title)
    expect(page).to have_content(updated_description)

  end
end
