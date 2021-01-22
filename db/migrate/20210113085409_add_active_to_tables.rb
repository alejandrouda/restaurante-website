class AddActiveToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :active, :boolean, default: false
  end
end
