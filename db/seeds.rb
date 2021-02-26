puts 'Creating restaurants...'
Restaurant.create!({
  name: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France"
})
Restaurant.create!({
  name: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
})

puts "Create a Review"
Review.create!({
  content: 'I loved it! It is my best restaurant in the area!',
  restaurant_id: Restaurant.first.id
})

puts 'Finished!'
