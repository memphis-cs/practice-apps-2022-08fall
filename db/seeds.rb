# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# University of Memphis

memphis = Team.create!(
  name: 'University of Memphis',
  home_city: 'Memphis, TN'
)

Player.create!(
  first_name: 'D.J.',
  last_name: 'Jeffries',
  position: 'F'
)

Player.create!(
  first_name: 'Jayden',
  last_name: 'Hardaway',
  position: 'G'
)

Player.create!(
  first_name: 'Alex',
  last_name: 'Lomax',
  position: 'G'
)

# Duke University

duke = Team.create!(
  name: 'Duke University',
  home_city: 'Durham, NC'
)

Player.create!(
  first_name: 'Wendell',
  last_name: 'Moore, Jr.',
  position: 'F'
)

Player.create!(
  first_name: 'Jalen',
  last_name: 'Johnson',
  position: 'F'
)

Player.create!(
  first_name: 'DJ',
  last_name: 'Steward',
  position: 'G'
)

# Michigan State University

msu = Team.create!(
  name: 'Michigan State University',
  home_city: 'East Lansing, MI'
)

Player.create!(
  first_name: 'Aaron',
  last_name: 'Henry',
  position: 'F'
)

Player.create!(
  first_name: 'Joshua',
  last_name: 'Langford',
  position: 'G'
)

Player.create!(
  first_name: 'Rocket',
  last_name: 'Watts',
  position: 'G'
)
