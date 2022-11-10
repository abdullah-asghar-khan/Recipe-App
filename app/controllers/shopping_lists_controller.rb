class ShoppingListsController < ApplicationController
  def index
    @recipe_food = RecipeFood.joins(:food)
      .select(:name, 'recipe_foods.quantity - foods.quantity as q', :price)
      .where('foods.quantity < recipe_foods.quantity')
  end

  def new; end
end
