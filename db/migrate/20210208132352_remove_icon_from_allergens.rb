class RemoveIconFromAllergens < ActiveRecord::Migration[6.0]
  def change
    remove_column :allergens, :icon, :string
  end
end
