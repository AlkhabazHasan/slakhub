class Invitation < ApplicationRecord
  belongs_to :traveller
  belongs_to :room
  belongs_to :hotel
  belongs_to :flight
  belongs_to :destination
  belongs_to :tour
  belongs_to :round
  belongs_to :user
  belongs_to :workspace
end
