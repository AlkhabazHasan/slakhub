class Flight < ApplicationRecord
  belongs_to :destination
  belongs_to :tour
  belongs_to :round
  belongs_to :user
  belongs_to :workspace
end
