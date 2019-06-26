class User < ApplicationRecord
  has_many :studios
  # Bookings made by user
  has_many :bookings, source: :booking
  # Booking for studios belonging to user
  has_many :incoming_bookings, through: :studios, source: :bookings
  has_one :image, as: :imageable
  has_many :verifications

  # For authentication
  has_secure_password

  validates_presence_of :first_name, :last_name, :email
  # Regex copied verbatium from
  # https://github.com/plataformatec/devise/blob/master/lib/generators/templates/devise.rb#174
  validates_format_of :email,with: /\A[^@\s]+@[^@\s]+\z/
end
