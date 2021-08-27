class Request < ApplicationRecord
  belongs_to :user
  enum urgency: { high: 0, middle: 1, low: 2 }
  enum genre: { other: 0, sanitary: 1, cloth: 2, hygiene: 3, child: 4 }
  is_impressionable counter_cache: true
  validates :item, presence: true, length: { maximum: 50 }
  validates :quantity, presence: true, length: { maximum: 50 }
  validates :comment, length: { maximum: 255 }
  validates :postal_code, length: { is: 7 }, allow_blank: true
  validates :location, length: { maximum: 250 }
  validates :phone_number, length: { maximum: 11 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }, allow_blank: true
  validates :name, length: { maximum: 50 }
end
