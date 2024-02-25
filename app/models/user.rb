class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :looks
  has_many :favorites
  has_many :ratings
  has_many :look_schedules

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

end
