class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  validates :url, format: URI::regexp(%w(http https)), presence: true
end
