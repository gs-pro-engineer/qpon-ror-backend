class Store < ActiveRecord::Base

	belongs_to :consortium
	belongs_to :store_type
	has_many :stores
	has_many :store_phones

	has_many :availabilities
	has_many :coupons, through: :availabilities

end