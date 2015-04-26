require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "generate dummy data for the app"
task "db:populate" do
  puts "Generating dummy data..."
  Ingredient.delete_all
  Ingredient.create!(name: "carrot")
  Ingredient.create!(name: "chicken")
  Ingredient.create!(name: "rice")
  Ingredient.create!(name: "cheese")
  Ingredient.create!(name: "broccoli")
  Ingredient.create!(name: "ham")
  Ingredient.create!(name: "bread")
  Ingredient.create!(name: "salt")
  Ingredient.create!(name: "pepper")
  Ingredient.create!(name: "salmon")
  Ingredient.create!(name: "sugar")
  Ingredient.create!(name: "dijon mustard")

  Recipe.delete_all
  Recipe.create!(name: "Chicken Divan", cook_time: 2000, body: "cook it").ingredients << Ingredient.find(2) <<Ingredient.find(3) << Ingredient.find(4) << Ingredient.find(5) << Ingredient.find(8) << Ingredient.find(9)

  Recipe.create!(name: "Chicken Cordon Bleu", cook_time: 1000, body: "throw it in the oven").ingredients << Ingredient.find(2) << Ingredient.find(6) << Ingredient.find(4) << Ingredient.find(8) << Ingredient.find(9)

end