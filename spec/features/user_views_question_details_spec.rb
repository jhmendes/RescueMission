require 'rails_helper'

feature "sees all details for a question" do
  scenario "user sees question details" do
    myquestion = Question.create(title: "Whats your favorite color?", description: "I'd like to know your favorite color, mine is red.")
    visit questions_path
    click_link "Whats your favorite color?"
    expect(page).to have_content("#{myquestion.id}.) Whats your favorite color? Description: I'd like to know your favorite color, mine is red." )

  end
end
