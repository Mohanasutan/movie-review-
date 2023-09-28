class Movie < ApplicationRecord
  has_one_attached :image
  has_many :reviews,dependent: :destroy
  def average_rating
    if reviews.present?
      (reviews.average(:rating) || 0).to_f.round(2)
    else
      0
    end
  end
end
