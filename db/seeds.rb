# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creaLord of the Rings" }])
#   CharacLuke", movie: movies.first)
require 'faker'
require "open-uri"

URLS = ["https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/praying-mantis-amazing-insects-1595937972.jpg?crop=0.671xw:1.00xh;0.178xw,0&resize=640:*",
        "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2022/08/CLI366.insects.cockchaferheadonb.jpg",
        "https://www.arrowexterminators.com/assets/istock-1032959962_gvZN2oZ.jpg",
        "https://i.ytimg.com/vi/xcKL9k2Udi8/maxresdefault.jpg",
        "https://img.freepik.com/premium-photo/beautiful-butterfly-front-view-flower-closeup-insect-beautiful-butterfly-stay-flower_488145-2459.jpg?w=1024",
        "https://rare-gallery.com/thumbs/563164-beautiful-butterfly.jpg",
        "https://www.superiorwallpapers.com/insects/beautiful-colored-locust-insect-on-a-green-leaf_1280x960.jpg",
        "https://images.radio-canada.ca/q_auto,w_960/v1/ici-premiere/16x9/stick-insect-animals-and-pets-branch-insect-insects-nature-tree-wisconsin.jpg",
        "https://cdn.shopify.com/s/files/1/0037/9591/0723/products/acheterPhasmeFeuille-Phylliumphilippinicum.jpg?v=1665574073&width=1445",
        "https://i0.wp.com/www.honeybeesuite.com/wp-content/uploads/2011/03/David-Cappaert-3.jpg?fit=1170%2C960&ssl=1",
        "https://ants.com/wp-content/uploads/2022/01/honey-pot-ants-768x547-1.jpg"]

def generate_image(url)
    URI.open(url)
end

def seed_user
    User.create!(email:Faker::Internet.email, password: Faker::Lorem.characters(number: 12))
end

def seed_insect(user, file)
    insect = Insect.create!(name: Faker::Games::Pokemon.name, description: Faker::Lorem.paragraph, user: user, price: rand(1..10000))
    insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")
    insect
end

def seed_bookings(user, insect)
    booking = Booking.create!(user: user, insect: insect, start_date: Faker::Date.backward(days: 14), end_date: Faker::Date.forward(days: 23), rating: rand(1..5), review: Faker::Lorem.paragraph)
end

puts "Seeding! 🌱"
(1..10).each do |i|
    file = generate_image(URLS[i])
    user = seed_user
    insect = seed_insect(user, file)
    puts "Created #{user.email} with insect: #{insect.name}!"
    seed_bookings(user, insect)
end
puts "Seeding done! 🚀"

