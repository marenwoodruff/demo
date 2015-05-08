Rails.application.config.paperclip_defaults = {
	:path => "/:id/:style.:filename",
	:storage => :s3,
	:s3_protocol => 'https',
	:s3_credentials => {
		:bucket => ENV['S3_BUCKET_NAME'],
		:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
		:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
}

Paperclip::Attachment.default_options[:use_timestamp] = false