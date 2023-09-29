class Request < ApplicationRecord
  validates :movie_name, uniqueness: true
end