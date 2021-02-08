class DrinksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_params, only: [:show, :index, :destroy, :update, :edit]
  before_action :set_index_params, only: [:index]
  before_action :set_current_variable_params, except: [:index]

  def show
  end

  def index
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
  end

  #------------------TODO: DINAMICLY SELECT MENU FOR MEAL----------------------
  def create
    @drink = Drink.new(drink_params)
    @drink.menu = Menu.last
    if @drink.save
      dashboard_redirect
    else
      render :new
    end
  end

  def edit
  end

  def update
    @drink.update(name: params[:drink][:name], description: params[:drink][:description], price: params[:drink][:price])
    dashboard_redirect
  end

  def destroy
    @drink.destroy
    dashboard_redirect
  end

  private

  def set_params
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:description, :name, :price)
  end

  def set_current_variable_params
    @current_dashboard = Dashboard.find(params[:dashboard_id])
  end

  def set_index_params
    @current_menu = Menu.find(params[:menu_id])
  end

  def dashboard_redirect
    redirect_to restaurante_dashboard_path(@current_dashboard)
  end
end
