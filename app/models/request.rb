class Request < ApplicationRecord
  validates :movie_name, uniqueness: true
  validates :movie_name, presence: true
  belongs_to :user
end