class User < ActiveRecord::Base
    has_many :car_interests
    has_many :models, through: :car_interests
end