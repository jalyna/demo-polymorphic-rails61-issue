class Subscription < ApplicationRecord
  belongs_to :public_plan
  belongs_to :plan, polymorphic: true
end
