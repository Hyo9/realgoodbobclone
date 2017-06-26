class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post4, counter_cache: true
end
