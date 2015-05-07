class Product < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, 
		# :path => "/:id/:style.:filename",
		:storage => :s3,
		:s3_protocol => 'https',
		:s3_credentials => {
			:bucket => ENV['S3_BUCKET_NAME'],
			:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
			:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
		},
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
