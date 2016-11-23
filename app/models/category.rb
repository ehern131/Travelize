class Category < ApplicationRecord
  has_many :venue_category_links
  has_many :venues, through: :venue_category_links

end
