class AddNameToRestaurantes < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurantes, :name, :string
  end
end
