require 'rails_helper'

feature "sees all questions" do
  scenario "user sees questions" do

    myquestion = Question.create(title: "Whats your favorite color?", description: "I'd like to know your favorite color, mine is red.")
    visit questions_path
    expect(page).to have_content(myquestion.title)
  end
end
