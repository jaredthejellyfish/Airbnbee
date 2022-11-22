# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creaLord of the Rings" }])
#   CharacLuke", movie: movies.first)
require 'faker'
require "open-uri"

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

file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/praying-mantis-amazing-insects-1595937972.jpg?crop=0.671xw:1.00xh
;0.178xw,0&resize=640:*")
insect = Insect.all[0]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2022/08/CLI366.insects.cockchaferheadonb.jpg")
insect = Insect.all[1]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://www.arrowexterminators.com/assets/istock-1032959962_gvZN2oZ.jpg")
insect = Insect.all[2]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")


file = URI.open("https://i.ytimg.com/vi/xcKL9k2Udi8/maxresdefault.jpg")
insect = Insect.all[3]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://img.freepik.com/premium-photo/beautiful-butterfly-front-view-flower-closeup-insect-beautiful-butterfly-stay-flower_488145-2459.jpg?w=1024")
insect = Insect.all[4]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://rare-gallery.com/thumbs/563164-beautiful-butterfly.jpg")
insect = Insect.all[5]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://www.superiorwallpapers.com/insects/beautiful-colored-locust-insect-on-a-green-leaf_1280x960.jpg")
insect = Insect.all[6]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://images.radio-canada.ca/q_auto,w_960/v1/ici-premiere/16x9/stick-insect-animals-and-pets-branch-insect-insects-nature-tree-wisconsin.jpg")
insect = Insect.all[7]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://cdn.shopify.com/s/files/1/0037/9591/0723/products/acheterPhasmeFeuille-Phylliumphilippinicum.jpg?v=1665574073&width=1445")
insect = Insect.all[8]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://i0.wp.com/www.honeybeesuite.com/wp-content/uploads/2011/03/David-Cappaert-3.jpg?fit=1170%2C960&ssl=1")
insect = Insect.all[9]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://i.natgeofe.com/n/b52d8e74-4b54-4dda-b895-c9695cc6530d/explore-basic-instincts-queen-ants_16x9.jpg")
insect = Insect.all[10]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")

file = URI.open("https://ants.com/wp-content/uploads/2022/01/honey-pot-ants-768x547-1.jpg")
insect = Insect.all[11]
insect.photo.attach(io: file, filename: "insect.jpg", content_type: "image/png")
