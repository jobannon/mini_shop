class MerchantsController < ApplicationController
  def index 
    @merchants = Merchant.all
  end 
  
  def new
    
  end 

  def show
    @merchant = Merchant.find(params[:id])
  end 

  def create
    Merchant.create!(merch_params)
    redirect_to '/merchants'
  end 

  def edit
    @merchant = Merchant.find(params[:id])
  end 

  def update
    @merchant = Merchant.find(params[:id])
    @merchant.update(merch_params)
    redirect_to "/merchants/#{@merchant.id}"
  end 

  def destroy
    Merchant.destroy(params[:id])
    redirect_to "/merchants"
  end 

  private

  def merch_params
    params.permit(:name, :address, :city, :state, :zip)
  end 
end 
