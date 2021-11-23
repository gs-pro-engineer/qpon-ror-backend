class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]

  def index
  	@coupons = Coupon.all
  end

  def new
  	@coupon = Coupon.new
  end

  def create
  	@coupon = Coupon.new(coupon_params)
  	respond_to do |format|
  		if @coupon.save
  			format.html {redirect_to @coupon, notice: "Cupon creado"}
  			format.json { render action: 'show', status: :created, location: @coupon}
  		else
  			format.html {render action: 'new'}
  			format.json {render json: @coupon.errors, status: :unprocessable_entity}
  		end
  	end
  end

  def show
  end

  def edit
  end

  def update
  	respond_to do |format|
  		if @coupon.update(coupon_params)
  			format.html { redirect_to @coupon, notice: "Cupon Actualizado" }
  			format.json { head :no_content }
  		else
  			format.html { render action: 'edit' }
  			format.json { render json: @coupon.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def destroy
  	@coupon.destroy
  	respond_to do |format|
  		format.html { redirect_to coupons_path }
  		format.json { head :no_content }
  	end
  end

  private

  	def set_coupon
  		@coupon = Coupon.find(params[:id])
  	end

  	def coupon_params
  		params.require(:coupon).permit(:name)
  	end

end