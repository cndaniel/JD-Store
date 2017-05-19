class ProductList < ApplicationRecord
  #---- 订单 ---
  belongs_to :order

  #---- 收藏功能 ---
  has_many :collects
  has_many :members, through: :collects, source: :user
  
end
