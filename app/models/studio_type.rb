class StudioType < ApplicationRecord
  # Initial seed data can be found at db/seeds.rb
  has_and_belongs_to_many :studios
  validates_presence_of :name
end
