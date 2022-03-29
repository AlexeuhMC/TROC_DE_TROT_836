class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :e_scooter
end
