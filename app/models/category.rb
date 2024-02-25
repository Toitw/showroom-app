class Category < ApplicationRecord
    has_and_belongs_to_many :looks
    validates :name, presence: true
    validates :name, uniqueness: true
end
