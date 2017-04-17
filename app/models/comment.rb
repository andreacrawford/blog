class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

end
