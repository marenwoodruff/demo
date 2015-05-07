class ProductImage < ActiveRecord::Base
	belongs_to :products

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "https://s3-us-west-2.amazonaws.com/tradedemos/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, :attachment_presence => true
end
