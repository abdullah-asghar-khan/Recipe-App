class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = current_user.foods
  end

  def create
    puts params
    puts params[:food_id]
    puts params[:recipe_id]
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.save
    puts @recipe_food.save
    redirect_to recipe_path(params[:recipe_id])
  end

  def edit; end

  def destroy; end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :recipe_id, :quantity)
  end
end
