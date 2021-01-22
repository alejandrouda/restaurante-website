class MenusController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_params, only: [:show]

  def index
    @menus = Menu.all
    @current_restaurante = Restaurante.find(params[:restaurante_id].to_i)
    @restaurantes = Restaurante.all
  end

  def show
    @meals = Meal.all
    @current_meals = Meal.where(menu_id: @menu.id)
    @current_drinks = Drink.where(menu_id: @menu.id)
    @current_restaurante = Restaurante.find(params[:restaurante_id].to_i)
    @meal_categories = MealCategory.all
    @drink_categories = DrinkCategory.all
    @filters = Filter.all
    @allergens = Allergen.all
  end

  private

  def set_params
    @menu = Menu.find(params[:id])
  end
end
