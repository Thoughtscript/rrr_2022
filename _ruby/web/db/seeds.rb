# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Will automatically look in app/models directory.
# require_relative '../app/models/dinosaur.rb'

puts "Seeding..."

a = Dinosaur.new(:name => "bronti")
puts a.speak
puts a.name
# Constructor does not save automatically.
a.save

# Using symbol hash.
Dinosaur.create(:name => "steggo")

# Using validation with !
Dinosaur.create!(name: "steggo")
Dinosaur.create!(name: "trex")
Dinosaur.create!(name: "fishlizard")

# Will fail since :random is not defined.
# Remember that basic accessors, getters, setters come out of box on Active Record models.
# Dinosaur.create(:name => "steggo", :random => "test")

p Dinosaur.first

p Dinosaur.all

# Lightweight FK BabyDino -> Dino
# Does not enforce referential integrity - no cascade
# (Only uses belong_to / has_many)

a.baby_dinos.create!(name: "littlesteggo", dinosaur_id: 1)
puts a.baby_dinos

BabyDino.create!(name: "littletrex", dinosaur_id: 2)

BabyDino.create!(name: "littletrex", dinosaur_id: a.id)

puts "Seeding done."