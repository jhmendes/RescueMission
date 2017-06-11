class AddAnswersBack < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string "description", null: false
      t.integer "question_id", null: false
    end
  end
end
