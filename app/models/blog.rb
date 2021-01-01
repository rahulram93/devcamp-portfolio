class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  enum status: {draft: 0, published: 1}
  enum rating: {fine: 0, good: 1, bad: 2}

  validates_presence_of :title, :body
end
