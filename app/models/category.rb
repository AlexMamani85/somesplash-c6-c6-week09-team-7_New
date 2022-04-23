class Category < ApplicationRecord
  validates :name, presence: true,
                   uniqueness: true
  validates :description, presence: true,
                          length: { in: 20..240 }
  # validates :cover, presence: true

  has_many :comments, as: :commentable, dependent: :nullify
  has_many :photos, dependent: :nullify
end