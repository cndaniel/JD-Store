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
  has_many :participated_products, :through => :collects, :source => :product

  def is_member_of?(product)
    participated_products.include?(product)
  end

  def join_collect!(product)
    participated_products << product
  end

  def quit_collect!(product)
    participated_products.delete(product)
  end

#----评论功能---
has_many :comments

end
