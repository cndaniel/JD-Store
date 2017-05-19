class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#---- 订单 ---
  has_many :orders

#----管理员---
  def admin?
    is_admin
  end

# ---收藏功能---
  has_many :products
  has_many :collects
  has_many :participated_prodcuts, :through => :collects, :source => :product

  def is_member_of?(product)
    participated_prodcuts.include?(product)
  end

  def join_collect!(product)
    participated_prodcuts << product
  end

  def quit_collect!(product)
    participated_prodcuts.delete(product)
  end

end
