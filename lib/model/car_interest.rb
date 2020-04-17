class CarInterest < ActiveRecord::Base
    belongs_to :user_id
    belongs_to :car_model_id
end