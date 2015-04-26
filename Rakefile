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
  Ingredient.create!(name: "cream soup")
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
  Ingredient.create!(name: "butter")
  Ingredient.create!(name: "teriyaki sauce")
  Ingredient.create!(name: "bacon bits")
  Ingredient.create!(name: "Parmesan cheese")
  Ingredient.create!(name: "garlic powder")
  Ingredient.create!(name: "onion powder")
  Ingredient.create!(name: "bread crumbs")
  

  

  Recipe.delete_all
  Recipe.create!(name: "Chicken Divan", cook_time: 4500, body: "2 bunches broccoli
    2 -4 boneless skinless chicken breasts
    1 tablespoon extra virgin olive oil
    3 tablespoons butter
    3⁄4 cup cream soup
    1 cup shredded cheddar cheese
    salt and pepper
    Preheat oven to 325.
Steam broccoli for 5 minutes until crisp-tender. Drain in colander.
In a medium frying pan, saute chicken breasts in olive oil until lightly browned, about 4-5 minutes per side. Remove from heat and drain on paper towls.
In a small saucepan, melt butter over medium heat. Whisk in flour and cook for 1-2 minutes to eliminate the taste of raw flour. Then gradually whisk in cream soup. Bring to a boil and then reduce to a simmer until the sauce is the consistency you desire. Add 3/4 of the cheese blend and whisk until combined. Add salt and pepper to taste.
In a 9x13 dish arrange chicken breasts (either whole or sliced) and broccoli. Pour sauce over top and sprinkle with remaining cheese. Cover with aluminum foil. Make several slits in the aluminum foil to allow the steam to escape.
Note: At this point, the dish can be frozen or refrigerated.
Bake in the oven for 30-45 minutes, taking off the aluminum foil for the last 10.").ingredients << Ingredient.find(2) <<Ingredient.find(3) << Ingredient.find(4) << Ingredient.find(5) << Ingredient.find(8) << Ingredient.find(9) << Ingredient.find(13)

  Recipe.create!(name: "Chicken Cordon Bleu", cook_time: 2700, body: "4 skinless, boneless chicken breast halves
 1/4 teaspoon salt
 1/8 teaspoon ground black pepper
 6 slices Swiss cheese
 4 slices cooked ham
 1/2 cup seasoned bread crumbs
 Preheat oven to 350 degrees F (175 degrees C). Coat a 7x11 inch baking dish with nonstick cooking spray.
Pound chicken breasts to 1/4 inch thickness.
Sprinkle each piece of chicken on both sides with salt and pepper. Place 1 cheese slice and 1 ham slice on top of each breast. Roll up each breast, and secure with a toothpick. Place in baking dish, and sprinkle chicken evenly with bread crumbs.
Bake for 30 to 35 minutes, or until chicken is no longer pink. Remove from oven, and place 1/2 cheese slice on top of each breast. Return to oven for 3 to 5 minutes, or until cheese has melted. Remove toothpicks, and serve immediately.
 ").ingredients << Ingredient.find(2) << Ingredient.find(6) << Ingredient.find(4) << Ingredient.find(8) << Ingredient.find(9) << Ingredient.find(19)

  Recipe.create!(name: "Salmon with Brown Sugar Glaze", cook_time: 900, body: "1/4 cup packed light brown sugar
 2 tablespoons Dijon mustard
 4 (6 ounce) boneless salmon fillets
 salt and ground black pepper to taste
 Preheat the oven's broiler and set the oven rack at about 6 inches from the heat source; prepare the rack of a broiler pan with cooking spray.
Season the salmon with salt and pepper and arrange onto the prepared broiler pan. Whisk together the brown sugar and Dijon mustard in a small bowl; spoon mixture evenly onto top of salmon fillets.
Cook under the preheated broiler until the fish flakes easily with a fork, 10 to 15 minutes.").ingredients << Ingredient.find(8) << Ingredient.find(9) << Ingredient.find(10) << Ingredient.find(11) << Ingredient.find(12)


  Recipe.create!(name: "Aimee's Quick Chicken", cook_time: 2100, body: "4 skinless, boneless chicken breast halves
 4 ounces Dijon mustard
 1/4 cup teriyaki sauce
 1/4 cup bacon bits
 1/2 cup grated Parmesan cheese
 Preheat oven to 400 degrees F (200 degrees C).
Place chicken in a 9x13 inch baking dish. Slather mustard evenly over chicken, then pour teriyaki sauce evenly over all. Sprinkle with bacon bits, then cover with cheese.
Bake at 400 degrees F (200 degrees C) for 30 minutes.").ingredients << Ingredient.find(2) << Ingredient.find(12) << Ingredient.find(14) << Ingredient.find(15) << Ingredient.find(16)

   Recipe.create!(name: "Easy Garlic Chicken", cook_time: 1200, body: "3 tablespoons butter
 4 skinless, boneless chicken breast halves
 2 teaspoons garlic powder
 1 teaspoon seasoning salt
 1 teaspoon onion powder
 Melt butter in a large skillet over medium high heat. Add chicken and sprinkle with garlic powder, seasoning salt and onion powder. Saute about 10 to 15 minutes on each side, or until chicken is cooked through and juices run clear.").ingredients << Ingredient.find(2) << Ingredient.find(13) << Ingredient.find(8) << Ingredient.find(17) << Ingredient.find(18)

    Recipe.create!(name: "Baked Dijon Salmon", cook_time: 1500, body: "4 (4 ounce) fillets salmon
 3 tablespoons prepared Dijon-style mustard
 salt and pepper to taste
 1/4 cup Italian-style dry bread crumbs
 1/4 cup butter, melted
 Preheat oven to 400 degrees F (200 degrees C). Line a shallow baking pan with aluminum foil.
Place salmon skin-side down on foil. Spread a thin layer of mustard on the top of each fillet, and season with salt and pepper. Top with bread crumbs, then drizzle with melted butter.
Bake in a preheated oven for 15 minutes, or until salmon flakes easily with a fork.").ingredients << Ingredient.find(2) << Ingredient.find(12) << Ingredient.find(14) << Ingredient.find(15) << Ingredient.find(16)

 

end