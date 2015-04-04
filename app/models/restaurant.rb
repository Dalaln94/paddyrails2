class Restaurant < ActiveRecord::Base

  belongs_to :category
  has_many :bookings 
  has_many :reviews
  has_one :menu
  accepts_nested_attributes_for :menu
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  def self.search(query)
    # where(:name, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end
