class Hotel < ApplicationRecord
  belongs_to :destination
  belongs_to :user
  belongs_to :workspace
  has_many   :rooms
end
