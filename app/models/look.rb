class Look < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_and_belongs_to_many :categories
  has_many :favorites
  has_many :ratings
  has_many :look_schedules

  validates :description, presence: true
end
