class Tour < ApplicationRecord
  belongs_to :workspace
  belongs_to :user
  #belongs_to :round

  has_many :destinations
  accepts_nested_attributes_for :destinations
end
