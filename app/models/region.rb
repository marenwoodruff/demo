class Region < ActiveRecord::Base
	has_many :countries
	#has_many :products
end
