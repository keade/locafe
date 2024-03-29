class Location < ActiveRecord::Base
	validates_uniqueness_of :address, :message => "Already Exists"
	extend FriendlyId
		friendly_id :name, :use => :slugged

	geocoded_by :full_address
	attr_accessible :name, :address, :city, :state, :zip, :country, :phone, :url, :gluten, :dog, :wifi, :delivery, :latitude, :longitude
	
	belongs_to :user
	validates :user_id, :presence => true
	after_validation :geocode, :if => :address_changed?

	def full_address
		[address, city, state, zip, country].compact.join(', ')
	end
	
	default_scope :order => 'locations.created_at DESC'
	
end
