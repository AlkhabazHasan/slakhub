class Traveller < ApplicationRecord
  belongs_to :workspace
  belongs_to :user

  before_save :titlelize_names

  def titlelize_names
    self.name = self.name.titleize
  end
end

def self.add_slugs
  update(slug: to_slug(name))
end
