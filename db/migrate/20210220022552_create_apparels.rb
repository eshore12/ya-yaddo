class CreateApparels < ActiveRecord::Migration[6.0]
  def change
    create_table :apparels do |t|
      t.string :brand
      t.string :category
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
