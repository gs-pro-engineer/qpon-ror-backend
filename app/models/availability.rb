class Availability < ActiveRecord::Base

	belongs_to :store
	belongs_to :coupon

end