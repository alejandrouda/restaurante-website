class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || restaurante_dashboard_path(resource.restaurante.id, resource.restaurante.dashboard.id)
  end

  def dashboard_redirect
    restaurante_dashboard_path(resource.restaurante.id, resource.restaurante.dashboard.id)
  end
end
