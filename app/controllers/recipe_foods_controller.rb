class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = current_user.foods
  end

  # def new
  #   recipe = Recipe.find(params[:recipe_id])
  #   unless recipe.user == current_user
  #     flash[:alert] =
  #       'You do not have access to add an ingredient on a recipe that belongs to other Users.'
  #     return redirect_to recipes_path
  #   end

  #   @recipe_food = RecipeFood.new
  #   @foods = current_user.foods
  # end

  # def create
  #   @recipe = Recipe.find(params[:recipe_id])
  #   recipe_food = RecipeFood.new(recipe_food_params)
  #   recipe_food.recipe = @recipe

  #   if recipe_food.save
  #     redirect_to recipe_path(@recipe), notice: 'New ingredient was successfully added.'
  #   else
  #     flash[:alert] = 'New Ingredient adding Failed. Please try again.'
  #   end
  # end


  # def create
  #   puts params
  #   puts params[:food_id]
  #   puts params[:recipe_id]
  #   @recipe_food = RecipeFood.new(recipe_food_params)
  #   @recipe_food.save
  #   puts @recipe_food.save
  #   redirect_to recipe_path(params[:recipe_id])
  # end

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

  def destroy; end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
