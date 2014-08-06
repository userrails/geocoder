class Hotel < ActiveRecord::Base
  attr_accessible :address, :city, :country, :latitude, :longitude, :name, :zipcode
  validates :address, :city, :country, :zipcode, :presence => true
  
  geocoded_by :address
  
  after_validation :geocode
  
#  def full_address
#    "#{address}, #{zipcode}, #{city}, #{country}"
#  end
end