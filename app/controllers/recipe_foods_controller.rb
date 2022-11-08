class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = current_user.foods
    puts params
  end

  def create
    @recipe_food = RecipeFood.new(recipe_id: params[:recipe_id],
                                  food_id: params[:food_id],
                                  quantity: params[:quantity])
    @recipe_food.save
    redirect_to recipe_path(params[:recipe_id])
  end

  def edit    
  end

  def destroy
  end  
end
