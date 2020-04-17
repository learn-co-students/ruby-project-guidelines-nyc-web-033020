class User < ActiveRecord::Base
    has_many :car_interests
    has_many :car_models, through: :car_interests
end