class Request < ApplicationRecord
  belongs_to :user
  enum urgency: { high: 0, middle: 1, low: 2 }
end
