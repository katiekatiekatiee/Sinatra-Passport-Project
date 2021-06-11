class AddColumnToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :date_of_trip, :string
    add_column :countries, :must_see, :string
  end
end
