class Car < ApplicationRecord
  validates :model, presence: true, length: { minimum: 5 }

  belongs_to :manufacturer
  belongs_to :car_group
  has_many :bookings, dependent: :destroy
end
