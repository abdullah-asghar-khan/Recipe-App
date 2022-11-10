class ShoppingListsController < ApplicationController
  def index
    @recipe_food = RecipeFood.joins(:food)
      .select(:name, 'recipe_foods.quantity - foods.quantity as q', :price)
      .where('foods.quantity < recipe_foods.quantity')
  end

  def new; end


  # def index
  #   @recipe = Recipe.find(params[:recipe_id])
  #   @recipe_food = RecipeFood.all
  #   @food = Food.all
  #   @total_price = current_user.sum(@recipe.recipe_food.includes([:food]))
  # end

  # def show
  #   @recipe = Recipe.find(params[:recipe_id])
  #   @recipe_food = RecipeFood.all
  #   @food = Food.all
  #   # @total_price = "#{@sum}"
  #   # @sum = quantity* @food.price
  #   # @recipes = current_user.recipe_foods
  #   # @foods = Food.all
  #   @total_price = 0
  #   @recipe_food.each do |fd|
  #     @total_price += fd.quantity * fd.food.price
  #   end
  # end

end
