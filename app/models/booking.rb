class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_many :slots

  enum status: %I[requested declined confirmed]

  validates_presence_of :status, :card_holder_name,
                        :billing_address, :postal_code,
                        :city, :sub_total, :studiotime_fee,
                        :slots
end
