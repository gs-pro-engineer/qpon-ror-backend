class StoreTypesController < ApplicationController
  
  def index
  	@store_types = StoreType.all
  end

  def update
  	@store_type = StoreType.find(params["update_id"])
  	@store_type.name = params["new_name"]
  	@store_type.save
  	respond_to do |format|
  		format.js
  	end
  end

  def create
  	@store_type = StoreType.new
  	@store_type.name = params["name"]
  	@store_type.save
  	respond_to do |format|
  		format.js
  	end
  end

  def destroy
    @store_type = StoreType.find(params[:id])
    @store_type.destroy
    respond_to do |format|
      format.js
    end
  end

end