# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creaLord of the Rings" }])
#   CharacLuke", movie: movies.first)
require 'faker'
require "open-uri"

def insect_image_file()
    URI.open("https://source.unsplash.com/random/900%C3%97700/?insect?#{rand()}")
end

def user_image_file()
    URI.open("https://source.unsplash.com/random/900%C3%97700/?portrait?#{rand()}")
end

def seed_user(file)
    user = User.create!(email:Faker::Internet.email, password: Faker::Lorem.characters(number: 12), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
    user.photo.attach(io: file, filename: "portrait.jpg", content_type: "image/png")
    user
end

def seed_insect(user, file)
    insect = Insect.create!(name: Faker::Games::Pokemon.name, description: Faker::Lorem.paragraph, user: user, price: rand(1..10000), latitude: rand(-90..90), longitude:rand(-180..180))
    insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")
    insect
end

def seed_bookings(user)
    booking = Booking.create!(user: user, insect: Insect.all.sample, start_date: Faker::Date.backward(days: 14), end_date: Faker::Date.forward(days: 23), rating: rand(1..5), review: Faker::Lorem.paragraph)
end

def intro
    puts
    puts "-----------------------------------"
    puts "|            Welcome              |"
    puts "-----------------------------------"
    puts
    puts "How many users, insects, and bookings would you like to create? (Integer)"
    print "> "
    input = gets.chomp.to_i
    puts
    input
end

def final
    user_file = user_image_file()
    user = User.create!(email: "123@email.real", password: "1234565", first_name: "Human", last_name: "Being")
    user.photo.attach(io: user_file, filename: "portrait.jpg", content_type: "image/png")

    puts
    puts "-----------------------------------"
    puts "|            Goodbye              |"
    puts "-----------------------------------"
    puts
    puts "A new default account has been generated for you to use:"
    puts
    puts "email: 123@email.real"
    puts "password: 1234565"
    puts "first_name: Human"
    puts "last_name: Being"
    puts
end

puts "Seeding! ????"
(1..intro).each do |i|
    insect_file = insect_image_file()
    user_file =   user_image_file()
    user =        seed_user(user_file)
    insect =      seed_insect(user, insect_file)

    puts "> Created #{user.email} with insect: #{insect.name}!"
    seed_bookings(user)
end

final

puts "Seeding done! ????"
