class Restaurant < ApplicationRecord
  has_many :reviews

  before_destroy :destroy_reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  def average
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    if total.zero?
      return { grade: 0,
               message: "There are no reviews yet for this restaurant" }
    else
      grade = total.to_f / reviews.length
      return { grade: grade,
               message: "#{grade} from reviews" }
    end
  end

  private

  def destroy_reviews
    self.reviews.each do |review|
      review.delete
    end
  end
end
