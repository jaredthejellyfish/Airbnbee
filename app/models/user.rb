require "open-uri"

class User < ApplicationRecord
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :insects, through: :bookings
  has_many :bookings

  # def initialize(attributes = {})
  #   file = URI.open("https://i0.wp.com/ifpo.org.uk/wp-content/uploads/2020/10/cropped-9-93879_computer-icons-user-image-person-silhouette-user-silhouettes-5.png?ssl=1")
  #   self.photo.attach(io: file, filename: "avatar.png", content_type: "image/png")
  # end

end
