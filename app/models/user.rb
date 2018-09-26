class User < ApplicationRecord
  belongs_to :workspace
  has_many :invitations
  has_many :rounds
  has_many :tours
  has_many :destinations
  has_many :flights
  has_many :travellers
  has_many :hotels
  has_many :rooms
  has_many :details
end
