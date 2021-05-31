class CreateCountriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
