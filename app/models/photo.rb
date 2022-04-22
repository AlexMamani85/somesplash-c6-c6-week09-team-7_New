class Photo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true,
                          length: { in: 20..240 }
  validates :image, presence: true

  belongs_to :category, counter_cache: true
end
