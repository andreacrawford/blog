class Comment < ApplicationRecord

  validates :body, presence: true
    validates :user, presence: true
    validates :article, presence: true
    validates :rating, numericality: { only_integer: true }

  belongs_to :user
  belongs_to :article

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

end