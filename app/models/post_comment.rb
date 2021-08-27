class PostComment < ApplicationRecord
  # attr_accessor :content

  belongs_to :post
  belongs_to :user
  validates :content, presence: true
end
