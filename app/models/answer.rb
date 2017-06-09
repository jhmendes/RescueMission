class Answer < ApplicationRecord
  # validates :title, presence: true, length: { minimum: 20}
  validates :description, presence: true, length: { minimum: 50 }
  belongs_to :question
end
