class CouponTypesController < ApplicationController
  
  def index
  	@coupon_types = CouponType.all
  end

  def update
  	@coupon_type = CouponType.find(params["update_id"])
  	@coupon_type.name = params["new_name"]
  	@coupon_type.save
  	respond_to do |format|
  		format.js
  	end
  end

  def create
  	@coupon_type = CouponType.new
  	@coupon_type.name = params["name"]
  	@coupon_type.save
  	respond_to do |format|
  		format.js
  	end
  end

  def destroy
    @coupon_type = CouponType.find(params[:id])
    @coupon_type.destroy
    respond_to do |format|
      format.js
    end
  end
end