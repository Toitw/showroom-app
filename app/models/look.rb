class Look < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_and_belongs_to_many :categories
  has_many :favorites
  has_many :ratings
  has_many :look_schedules

  validates :description, presence: true

  attr_accessor :category_names

  before_save :assign_categories

  private

  def assign_categories
    if category_names
      self.categories = category_names.split(',').map do |name|
        Category.find_or_create_by(name: name.strip)
      end
    end
  end
end
