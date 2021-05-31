class CreateName=users < ActiveRecord::Migration
  def change
    create_table :name=users do |t|

      t.timestamps null: false
    end
  end
end
