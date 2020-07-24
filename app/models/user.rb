class User < ApplicationRecord
  has_many :games
  has_many :passages, through: :games
end
