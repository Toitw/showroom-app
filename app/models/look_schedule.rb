class LookSchedule < ApplicationRecord
  belongs_to :user
  belongs_to :look

  validates :date, presence: true
end
