class CreateMovements < ActiveRecord::Migration[7.1]
  def change
    create_table :movements do |t|
      t.references :author, foreign_key: { to_table: :users }
      t.string :name
      t.decimal :amount
      t.timestamps
    end
  end
end
