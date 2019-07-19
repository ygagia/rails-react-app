class Car < ApplicationRecord
  validates :model, presence: true

  belongs_to :manufacturer
  belongs_to :car_group
  has_many :bookings, dependent: :destroy

  def display_name
    if manufacturer.present?
      "#{manufacturer.name} #{model}"
    else
      model
    end
  end
end
