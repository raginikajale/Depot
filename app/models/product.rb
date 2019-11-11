class Product < ApplicationRecord	
	validates_presence_of :title, :description, :image_url
	validates_numericality_of :price
	# validates :price, numericality: { greater_than: 0 }
	validates_uniqueness_of :title
	validate :validate
	validates_format_of :image_url, :with => %r{\.(gif|jpg|png)}i, :message => "must be a URL for a GIF, JPG, or PNG image"

	protected
	def validate		
		errors.add(:price, "should be positive") unless price.nil? || price >= 0.01
	end
end
