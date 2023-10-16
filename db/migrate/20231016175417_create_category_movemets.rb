class CreateCategoryMovemets < ActiveRecord::Migration[7.1]
  def change
    create_table :category_movemets do |t|
      t.references :category, foreign_key: { to_table: :categories }
      t.references :movements, foreign_key: { to_table: :movements }
      t.timestamps
    end
  end
end
