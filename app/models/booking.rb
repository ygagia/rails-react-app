class Booking < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :pickup_location, presence: true
  validates :dropoff_location, presence: true
  validates :car_id, presence: true


  belongs_to :user
  belongs_to :car
end
