class RemoveUserFromDashboards < ActiveRecord::Migration[6.0]
  def change
    remove_reference :dashboards, :user, null: false, foreign_key: true
  end
end
