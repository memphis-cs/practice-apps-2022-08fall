# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Track.create!(
  order_number: 1,
  title: 'I Wanna Dance with Somebody (Who Loves Me)',
  artist: 'Whitney Houston',
  length: 5 * 60 + 14
)

Track.create!(
  order_number: 2,
  title: "Sweet Child O' Mine",
  artist: "Guns N' Roses",
  length: 5 * 60 + 2
)

Track.create!(
  order_number: 3,
  title: 'Total Eclipse of the Heart',
  artist: 'Bonnie Tyler',
  length: 4 * 60 + 27
)

Track.create!(
  order_number: 4,
  title: 'When Doves Cry',
  artist: 'Prince',
  length: 5 * 60 + 52
)

Track.create!(
  order_number: 5,
  title: 'Take On Me',
  artist: 'a-ha',
  length: 3 * 60 + 49
)
