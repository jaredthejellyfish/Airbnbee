# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creaLord of the Rings" }])
#   CharacLuke", movie: movies.first)
require 'faker'
require "open-uri"

def generate_image()
    URI.open("https://source.unsplash.com/random/900%C3%97700/?insect?#{rand()}")
end

def seed_user
    User.create!(email:Faker::Internet.email, password: Faker::Lorem.characters(number: 12), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
end

def seed_insect(user, file)
    insect = Insect.create!(name: Faker::Games::Pokemon.name, description: Faker::Lorem.paragraph, user: user, price: rand(1..10000))
    insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")
    insect
end

def seed_bookings(user, insect)
    booking = Booking.create!(user: user, insect: insect, start_date: Faker::Date.backward(days: 14), end_date: Faker::Date.forward(days: 23), rating: rand(1..5), review: Faker::Lorem.paragraph)
end

def intro
    puts
    puts "-----------------------------------"
    puts "|            Welcome              |"
    puts "-----------------------------------"
    puts "How many users, insects, and bookings would you like to create? (Integer)"
    print "> "
    input = gets.chomp.to_i
    puts 
    input
end

puts "Seeding! 🌱"
(1..intro).each do |i|
    file = generate_image()
    user = seed_user
    insect = seed_insect(user, file)
    puts "Created #{user.email} with insect: #{insect.name}!"
    seed_bookings(user, insect)
end
puts "Seeding done! 🚀"
