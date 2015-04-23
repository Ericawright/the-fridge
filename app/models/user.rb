class User < ActiveRecord::Base
  has_many :favorites
  validates :username, :email, presence: true, uniqueness: true
  validates :password, presence: true
end