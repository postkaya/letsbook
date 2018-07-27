class Subscription < ApplicationRecord
  validates :name, presence: true
end
