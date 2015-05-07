class Product < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, 
		:default_url => "https://s3-us-west-2.amazonaws.com/tradedemos/missing.png",
		:storage => :s3,
    :s3_credentials => {
      :bucket => ENV['S3_BUCKET_NAME'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
    
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, :attachment_presence => true

  validates :name, :description, :price, presence: true

end
