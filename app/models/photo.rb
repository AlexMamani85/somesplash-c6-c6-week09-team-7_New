class Photo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true,
                          length: { in: 20..240 }
  validates :image, presence: true

  belongs_to :category, optional: true, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :image
end
