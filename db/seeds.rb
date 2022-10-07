# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Alice's Listings

# alice = User.create!(
#   email: "alice@email.com",
#   password: "password"
# )

Listing.create!(
  name:        'Perfectly Round Potato Chip Lays Zesty Ranch! Extremely Rare!',
  description: "Just found this in a fresh bag of Lay's Zesty Ranch chips. Thought hey somebody might want this for their collection of circular objects.",
  available:   false
)

Listing.create!(
  name:        'Bottle of Air from Detroit, Michigan',
  description: 'Smells like automobile exhaust.',
  available:   true
)

Listing.create!(
  name:        'Mummified Vampire Heart',
  description: 'I have for you to consider this Vampire Hunter/Slayer staked mummified "REAL HEART" (not realy its fake). The vampire heart has a permanent hole in the heart. The heart is made of polymer clay and many layers of paint and waxed sealed; ~ heart, 4.25" long by 2.75" wide.',
  available:   true
)

# Bob's Listings

# bob = User.create!(
#   email: "bob@email.com",
#   password: "password"
# )

Listing.create!(
  name:        'Heart Shaped Potato 💗',
  description: 'This is an unusual find! A heart shaped potato, measuring approximately 3 1/2 inches wide x 3 1/4 inches high. Give your sweetheart a belated Valentines Day gift!',
  available:   true
)

Listing.create!(
  name:        'Chick-fil-a Straight Fry',
  description: 'It is a french fry. It is straight. Very rare.',
  available:   true
)

Listing.create!(
  name:        'RARE "J" SHAPED FRITO ',
  description: 'RARE "J" SHAPED FRITO FLAVOR TWIST HONEY BBQ. BRAND NEW EXTREMELY RARE.',
  available:   false
)

# Charlie's Listings

# charlie = User.create!(
#   email: "charlie@email.com",
#   password: "password"
# )

Listing.create!(
  name:        'Transorbital Lobotomy Orbitoclast',
  description: 'Used to perform Transorbital Lobotomy. Here is your chance to have a Lobotomy tool set. An orbitoclast is a surgical instrument used for performing transorbital lobotomies. It was invented by Dr. Walter Freeman in 1948 to replace the unique form of leucotome used up until that point for the transorbital lobotomy procedure. The hammer and Orbitoclast are made out of stainless steel. The orbitoclast is stamped Freeman on both sides. This is a replica and not to be confused from an original. This set is for a collection or display purposes only! The orbitoclast is pointed and is very dangerous. I will not be held liable for the misuse of any product gotten from me. Must be 21 and older for these item',
  available:   true
)

Listing.create!(
  name:        'Potato Shaped Rock',
  description: 'This rock is shaped exactly like a potato. Perfect potato.',
  available:   false
)

Listing.create!(
  name:        'Mummified Werewolf Finger & Claw',
  description: "WOW!!! This box was found in an old dilapidated barn on Grandpa's ranch. He must have Know what others just imagined! What a great find! Werewolves do exist! Look at that mummified finger and claw!!!",
  available:   true
)
