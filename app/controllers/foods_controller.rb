class FoodsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @foods = Food.all
  end
  
  def new     
    @foods = Food.new

  end
  
  def create  
 
    @new_food = Food.new(name: params[:name],
      measurment_unit: params[:measurment_unit],
      price: params[:unit_price],
      uantity: params[:quantity],
      user_id: current_user.id)
 

    @new_food.save

      redirect_to foods_path

  end
  
  def destroy
    Food.find(params[:id]).destroy
    redirect_to foods_path
  end

end