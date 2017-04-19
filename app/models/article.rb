class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_many :users
  has_many :comments

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def self.search(search_term)
    Article.where("lower(title) LIKE ?", "%#{search_term}%".downcase)
  end
end
