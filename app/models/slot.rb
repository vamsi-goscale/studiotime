class Slot < ApplicationRecord
  belongs_to :booking
  validates_presence_of :date, :from, :to
  validate :from_should_be_less_than_to
  
  private

  def from_should_be_less_than_to
    errors.add('from time should be less than to time') if from >= to
  end
end
