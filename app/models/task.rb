class Task < ApplicationRecord
  # Add validations
  validates :title, presence: true
  validates :details, presence: true
end
