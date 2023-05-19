# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
places = Place.create([{name: "Mexico City"}, {name: "Charleston"}, {name: "Beijing"}])
posts = Post.create([
  {title: "Ate tacos", description: "Tacos are delicious and these were no expection", posted_on: "2023-03-14", place_id: "1"}, 
  {title: "Ate pizza", description: "Pizza isn't as good as tacos", posted_on: "2023-04-19", place_id: "2"},
  {title: "Went to a museum", description: "Decided to mix it up today", posted_on: "2023-05-17", place_id: "3"}])