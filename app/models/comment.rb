class Comment < ApplicationRecord
  validates :body, presence: true,
                   length: { in: 2..350 }
end
