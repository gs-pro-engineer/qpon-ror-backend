class Coupon < ActiveRecord::Base

	belongs_to :coupon_type
	belongs_to :coupon_state
	belongs_to :consortium
	belongs_to :admin

	has_many :histories
	has_many :users, through: :histories 

	has_many :availabilities
	has_many :stores, through: :availabilities

end