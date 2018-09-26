class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :destination
  belongs_to :user
  belongs_to :workspace
end
