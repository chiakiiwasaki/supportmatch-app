class Request < ApplicationRecord
  belongs_to :user
  enum urgency: { high: 0, middle: 1, low: 2 }
  enum genre: { other: 0, sanitary: 1, cloth: 2, hygiene: 3, child: 4 }
  is_impressionable counter_cache: true
end
