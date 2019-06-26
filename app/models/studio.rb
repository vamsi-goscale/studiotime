class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :slots, through: :bookings
  has_and_belongs_to_many :studio_types
  has_many :images, as: :imageable

  validates_presence_of :name, :description, :min_booking_time,
                        :opening_time, :closing_time, :amenities,
                        :main_equipment, :rules, :address, :lat, :lng,
                        :price_per_hour, :aud_eng_included 

  def has_vacant_slots? from, to
    # METHOD TO CHECK IF A STUDIO HAS VACANT SLOTS
    # BETWEEN ANY GIVEN TIME
  end
end
