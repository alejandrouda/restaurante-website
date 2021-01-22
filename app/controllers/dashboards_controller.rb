class DashboardsController < ApplicationController
  before_action :set_params, only: [:show]

  def show
    @user = User.find(current_user.id)
    @restaurante = Restaurante.find(current_user.restaurante.id)
    @meals = Meal.all
    @drinks = Drink.all
  end

  private

  def set_params
    @current_restaurante = Restaurante.find(params[:restaurante_id])
    @current_dashboard = Dashboard.find(params[:id])
  end
end
