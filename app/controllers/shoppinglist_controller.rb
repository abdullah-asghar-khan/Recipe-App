class ShoppinglistController < ApplicationController
  # before_action :authenticate_user!

  def index
    @user = current_user
    @foods = @user.foods
    @recipes = Recipe.where(user_id: current_user)
    @recipe_food = RecipeFood.all
    @total_price = 0
    # @total_price = current_user.sum(@recipe.recipe_food.includes([:food]))

    # @quantity = 0

    # @foods.each do |food|
    #   @quantity += RecipeFood.joins(:food).where(food_id: food.id).sum('quantity') * food.price
    # end

    @recipe_food.each do |fd|
      @total_price += fd.quantity * fd.food.price
    end
  end
end
