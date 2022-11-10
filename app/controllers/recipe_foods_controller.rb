class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = current_user.includes(:foods)
  end

  def create
    @recipe_food = RecipeFood.new(recipe_id: params[:recipe_id],
                                  food_id: params[:food_id],
                                  quantity: params[:quantity])
    @recipe_food.save
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:recipe_id, :food_id, :quantity)
  end
end
