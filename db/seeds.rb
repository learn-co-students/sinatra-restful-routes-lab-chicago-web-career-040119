puts "Destroying the old data...."
Recipe.destroy_all
# recipe_number = 20

# recipe_number.times do
# end
Recipe.create(
  name: "Ceviche",
  ingredients:  "fish, lime, onion, cilantro, salt, pepper",
  cook_time: "20 minutes"
)
Recipe.create(
  name: "Lomo Saltado",
  ingredients:  "Sirloin beef, potato, onion, aji amarillo, cilantro",
  cook_time: "40 minutes"
)
Recipe.create(
  name: "Arroz con Pollo",
  ingredients:  "rice, cilantro, chicken, peas, carrot, red bell pepper",
  cook_time: "30 minutes"
)
Recipe.create(
  name: "Anticuchos",
  ingredients:  "Beef, aji pancha, vinegar, pepper, salt",
  cook_time: "60 minutes"
)
Recipe.create(
  name: "Parihuela",
  ingredients:  "fish, chicha de jora, aji panca",
  cook_time: "20 minutes"
)
Recipe.create(
  name: "Rocoto Relleno",
  ingredients:  "rocoto, cheese, beef",
  cook_time: "90 minutes"
)

puts ""
puts ""
puts ""
puts "Created: 6 Recipes"
