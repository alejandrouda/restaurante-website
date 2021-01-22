class CreateFilterTags < ActiveRecord::Migration[6.0]
  def change
    create_table :filter_tags do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :filter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
