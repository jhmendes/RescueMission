# As a user
# I want to delete a question
# So that I can delete duplicate questions
#
# Acceptance Criteria
#
# - I must be able delete a question from the question edit page
# - I must be able delete a question from the question details page
# - All answers associated with the question must also be deleted
#


require 'rails_helper'

feature "user deletes a question" do
  scenario "user deletes a question from the edit page" do

    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    visit questions_path
    click_link "Is Ruby difficult to learn?"
    click_link "Edit this Question"
    click_button"Delete this Question"
    # the final page should be the show page or full questions page
    expect(page).not_to have_content("Is Ruby difficult to learn")
  end

  scenario "user deletes a question from the question details page" do

    myquestion = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
    visit questions_path
    click_link "Is Ruby difficult to learn?"
    click_button"Delete this Question"
    
    expect(page).not_to have_content("Is Ruby difficult to learn")
  end



end
