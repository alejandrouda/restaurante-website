class AddRestauranteToDashboards < ActiveRecord::Migration[6.0]
  def change
    add_reference :dashboards, :restaurante, null: false, foreign_key: true
  end
end
