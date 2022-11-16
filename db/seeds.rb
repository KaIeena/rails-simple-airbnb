# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Tiny cute studio',
  address: '31 Draycott Avenue London SW3',
  description: 'A cute studio for a weekend in downtown',
  price_per_night: 30,
  number_of_guests: 1
)

Flat.create!(
  name: 'Spacious Loft',
  address: 'Thornes Loft Charles Clowes Walk London SW11',
  description: 'Want to spend a great time in the city? Here is our loft for a lovely couple',
  price_per_night: 55,
  number_of_guests: 2
)

Flat.create!(
  name: 'Maisonette for friends',
  address: 'Winterfold Close London SW19',
  description: 'This home is perfect for a bunch of friends to hang out for a couple of days',
  price_per_night: 80,
  number_of_guests: 4
)
