class Comment < ApplicationRecord
  validates :body, presence: true,
                   length: { in: 2..350 }

  belongs_to :photo, optional: true, counter_cache: true
  belongs_to :commentable, polymorphic: true
end
