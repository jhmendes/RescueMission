class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string "description", null: false
      t.integer "question_id", null: false
    end
  end
end


# add in a user id when you get to the non-core user stories
