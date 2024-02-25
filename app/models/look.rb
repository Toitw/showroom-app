class Look < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_and_belongs_to_many :categories
  has_many :favorites
  has_many :ratings
  has_many :look_schedules

  validates :title, presence: true
end
