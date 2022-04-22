class Comment < ApplicationRecord
  validates :body, presence: true,
                   length: { in: 2..350 }

  belongs_to :photo, counter_cache: true
end
