class Car < ApplicationRecord
  validates :model, presence: true, length: { minimum: 5 }

  has_many :bookings, dependent: :destroy
end
