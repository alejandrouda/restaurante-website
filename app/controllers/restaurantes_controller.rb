class RestaurantesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @restaurantes = Restaurante.all
  end
end
