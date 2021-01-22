class AddCodeToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :code, :string
  end
end
