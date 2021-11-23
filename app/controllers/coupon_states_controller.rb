class CouponStatesController < ApplicationController
  
  def index
    @coupon_states = CouponState.all
  end

  def update
    @coupon_state = CouponState.find(params["update_id"])
    @coupon_state.name = params["new_name"]
    @coupon_state.save
    respond_to do |format|
      format.js
    end
  end

  def create
    @coupon_state = CouponState.new
    @coupon_state.name = params["name"]
    @coupon_state.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @coupon_state = CouponState.find(params[:id])
    @coupon_state.destroy
    respond_to do |format|
      format.js
    end
  end
end