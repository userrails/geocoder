class HotelsController < ApplicationController
  def new
    @hotel = Hotel.new
  end
  
  def create
    @hotel = Hotel.new(params[:hotel])
    if @hotel.save
      redirect_to hotels_path
    else
      render :new
    end
  end
  
  def index
    @hotels = Hotel.find(:all)
  end
  
  def destroy
    @hotel = Hotel.find(params[:id])
    if @hotel.destroy
      redirect_to hotels_path
    end
  end
  
  def edit
    @hotel = Hotel.find(params[:id])
  end
  
  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update_attributes(params[:hotel])
      redirect_to hotels_path
    else
      render :edit
    end
  end
  
  def search
    
  end
  
  def search_result
    if params[:query].present?
      @hotel = Hotel.where("zipcode=?", "#{params[:query]}").first
      @hotels = Hotel.near(@hotel.zipcode)
    end
  end
end