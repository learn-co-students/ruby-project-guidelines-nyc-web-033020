class CarInterest < ActiveRecord::Base
    belongs_to :user_id
    belongs_to :model_id
end