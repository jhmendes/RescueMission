class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 20}
  validates :description, presence: true, length: { minimum: 50}
  # validates :user_id
  # dont validate user id yet, finish building, add back in with user authentication
end
