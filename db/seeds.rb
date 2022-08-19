# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

VideoGame.create!(
  title: 'Asteroids',
  year: 1981,
  publisher: 'Atari',
  genre: 'Action'
)

VideoGame.create!(
  title: 'Pitfall!',
  year: 1982,
  publisher: 'Activision',
  genre: 'Action-adventure'
)

VideoGame.create!(
  title: 'Polaris',
  year: 1983,
  publisher: 'Tigervision',
  genre: 'Action'
)

VideoGame.create!(
  title: 'Q*bert',
  year: 1983,
  publisher: 'Parker Brothers',
  genre: 'Action'
)

VideoGame.create!(
  title: 'Millipede',
  year: 1984,
  publisher: 'Atari',
  genre: 'Action'
)
