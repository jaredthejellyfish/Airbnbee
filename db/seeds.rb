# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creaLord of the Rings" }])
#   CharacLuke", movie: movies.first)
require 'faker'

def generate_image_url
    "https://source.unsplash.com/collection/8884129/512x512?#{rand()}"
end

def seed_user
    User.create!(email:Faker::Internet.email, password: Faker::Lorem.characters(number: 12))
end

def seed_insect(user)
    insect = Insect.create!(name: Faker::Games::Pokemon.name, description: Faker::Lorem.paragraph, user: user, img_url: generate_image_url, price: rand(1..10000))
end

def seed_bookings(user, insect)
    booking = Booking.create!(user: user, insect: insect, start_date: Faker::Date.backward(days: 14), end_date: Faker::Date.forward(days: 23), rating: rand(1..5), review: Faker::Lorem.paragraph)
end

puts "Seeding! 🌱"
10.times do
    user = seed_user
    insect = seed_insect(user)
    puts "Created #{user.email} with insect: #{insect.name}!"
    seed_bookings(user, insect)
end
puts "Seeding done! 🚀"