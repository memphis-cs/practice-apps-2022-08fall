# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DogListing.create!(
  name:         'Buffy',
  breed:        'Dachshund',
  sex:          'Female',
  weight:       22,
  price:        325,
  seller_email: 'gale@mymail.com'
)

DogListing.create!(
  name:         'Lazy Susan',
  breed:        'Labrador Retriever',
  sex:          'Female',
  weight:       64,
  price:        188,
  seller_email: 'hotdog@mailster.com'
)

DogListing.create!(
  name:         'Terror',
  breed:        'French Bulldog',
  sex:          'Male',
  weight:       22,
  price:        85,
  seller_email: 'max@email.com'
)

DogListing.create!(
  name:         'Ponch',
  breed:        'Rottweiler',
  sex:          'Male',
  weight:       98,
  price:        850,
  seller_email: 'bobby33@yomail.com'
)

DogListing.create!(
  name:         'Lady Di',
  breed:        'Great Dane',
  sex:          'Female',
  weight:       115,
  price:        995,
  seller_email: 'gobreeder@ximail.com'
)
