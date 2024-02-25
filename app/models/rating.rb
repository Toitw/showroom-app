class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :look

  validates :score, presence: true
end
