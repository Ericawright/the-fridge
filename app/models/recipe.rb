class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  validates :name, :body, :ingred, :picture, presence: true 
end