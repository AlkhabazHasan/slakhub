class Tour < ApplicationRecord
  belongs_to :workspace
  belongs_to :users
  belongs_to :round
end
