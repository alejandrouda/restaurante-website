class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_params, only: [:show, :index, :destroy, :update, :edit]
  before_action :set_index_params, only: [:index]
  before_action :set_current_variable_params, except: [:index]

  def show
  end

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  #------------------TODO: DINAMICLY SELECT MENU FOR MEAL----------------------
  def create
    @meal = Meal.new(meal_params)
    @meal.menu = Menu.last
    if @meal.save
      dashboard_redirect
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meal.update(name: params[:meal][:name], description: params[:meal][:description], price: params[:meal][:price])
    dashboard_redirect
  end

  def destroy
    @meal.destroy
    dashboard_redirect
  end

  private

  def set_params
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:description, :name, :price)
  end

  def set_current_variable_params
    @current_restaurante = Restaurante.find(params[:restaurante_id])
    @current_dashboard = Dashboard.find(params[:dashboard_id])
  end

  def set_index_params
    @current_restaurante = Restaurante.find(params[:restaurante_id])
    @current_menu = Menu.find(params[:menu_id])
  end

  def dashboard_redirect
    redirect_to restaurante_dashboard_path(@current_restaurante, @current_dashboard)
  end
end
