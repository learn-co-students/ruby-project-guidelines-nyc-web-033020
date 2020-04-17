class CarModel < ActiveRecord::Base
    has_many :car_interests
    has_many :users, through: :car_interests
end