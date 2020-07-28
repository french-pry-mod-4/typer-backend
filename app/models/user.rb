class User < ApplicationRecord
  has_many :games
  has_many :passages, through: :games

  validates :username, presence: true, uniqueness: true
end
