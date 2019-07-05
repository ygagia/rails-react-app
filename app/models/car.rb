class Car < ApplicationRecord
  validates :model, presence: true, length: { minimum: 5 }
end
