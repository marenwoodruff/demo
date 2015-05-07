class Product < ActiveRecord::Base
	belongs_to :user
	has_many :product_images, :dependent => :destroy

	# has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "https://s3-us-west-2.amazonaws.com/tradedemos/missing.png"
 #  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 #  validates :image, :attachment_presence => true

  accepts_nested_attributes_for :product_images, :reject_if => lambda { |t| t['product_image'].nil? }, :allow_destroy => true
  # allows you to manage the product_image model through the products model; won't show if there aren't any product images
  # reject_if will make sure that emtpy product_images are not stored

  validates :name, :description, :price, presence: true

end
