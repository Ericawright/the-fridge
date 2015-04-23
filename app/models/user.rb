class User < ActiveRecord::Base
  has_many :favorites
  validates :username, :email, presence: true, uniquness: true
  validates :password, presence: true
end