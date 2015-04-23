class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniquness: true
  validates :password, presence: true
end