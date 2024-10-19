class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
end
