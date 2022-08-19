# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Dark Side of the Moon

dsotm = Album.create!(
  title: 'The Dark Side of the Moon',
  artist: 'Pink Floyd'
)

Track.create!(
  title: 'Speak to Me / Breathe',
  length: (3 * 60) + 58
)

Track.create!(
  title: 'On the Run',
  length: (3 * 60) + 35
)

Track.create!(
  title: 'Time',
  length: (7 * 60) + 5
)

# Rumours

rumours = Album.create!(
  title: 'Rumours',
  artist: 'Fleetwood Mac'
)

Track.create!(
  title: 'Second Hand News',
  length: (2 * 60) + 48
)

Track.create!(
  title: 'Dreams',
  length: (4 * 60) + 39
)

Track.create!(
  title: 'Never Going Back Again',
  length: (2 * 60) + 14
)

# Abbey Road

abbeyrd = Album.create!(
  title: 'Abbey Road',
  artist: 'The Beatles'
)

Track.create!(
  title: 'Come Together',
  length: (4 * 60) + 19
)

Track.create!(
  title: 'Something',
  length: (3 * 60) + 3
)

Track.create!(
  title: "Maxwell's Silver Hammer",
  length: (3 * 60) + 27
)
