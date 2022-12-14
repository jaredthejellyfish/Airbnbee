class Insect < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true

  geocoded_by :address
  after_validation :geocode
end
