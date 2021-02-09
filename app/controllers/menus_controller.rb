class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_params, only: [:show]

  def index
    @menus = Menu.all
    @set_menus = SetMenu.all
  end

  def show
    @meal_categories = MealCategory.all
    @drink_categories = DrinkCategory.all
    @drink_all = Drink.where(menu_id: @menu.id)
    @filters = Filter.all
    @allergens = Allergen.all
    @meals = Meal.all
    @meal_all = Meal.where(menu_id: @menu.id)
    @meal_glutenfree = meal_filter('glutenfree')
    @meal_unlactosed = meal_filter('unlactosed')
    @meal_vegan = meal_filter('vegan')
    @meal_vegetarian = meal_filter('vegetarian')
    @current_drinks = Drink.where(menu_id: @menu.id)
  end

  private



  def set_params
    @menu = Menu.find(params[:id])
  end

  def meal_filter(filter)
    Filter.find_by(filter_title: filter).meals.where(menu_id: @menu.id)
  end

end
