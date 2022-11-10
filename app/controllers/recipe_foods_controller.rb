class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = current_user.foods
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe = @recipe
    if @recipe_food.save
      flash[:notice] = 'Food added to recipe.'
      redirect_to recipe_path(@recipe)
    else
      flash[:alert] = 'Food not added to recipe.'
      render :new
    end
  end

  def edit; end

  def destroy
    recipe_food = RecipeFood.find(params[:id])

    unless recipe_food.recipe.user == current_user
      flash[:alert] =
        'You do not have access to delete the ingredient belongs to other Users.'
      return redirect_to recipes_path
    end

    if recipe_food.destroy
      flash[:notice] = 'Ingredient was successfully removed.'
    else
      flash[:alert] = 'Ingredient removal Failed. Please try again.'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
