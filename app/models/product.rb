class Product < ActiveRecord::Base
	belongs_to :user
	belongs_to :country
	#belongs_to :region

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, 
		:default_url => "none"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, :attachment_presence => true

  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  def price=(value)
	  value = value.to_s.tr('$', '').to_f
	  write_attribute(:price, value)
	end

end
