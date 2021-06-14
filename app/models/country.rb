class Country < ActiveRecord::Base
    belongs_to :user
    validates :name, :description, :must_see, :date_of_trip, presence: true
end
