class Campground < ApplicationRecord
  has_many :campsites

  def self.order_by_recently_created
    order(created_at: :desc)
  end

  def campsite_count
    campsites.length
  end
end
