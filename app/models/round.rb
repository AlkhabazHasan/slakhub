class Round < ApplicationRecord
  belongs_to :workspace
  belongs_to :user

  #has_many :destinations
  #has_many :tours
end
