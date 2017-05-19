class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :price, numericality: { greater_than: 0}

  # ---分类---
  belongs_to :category

  # ---上传图片---
  mount_uploader :image, ImageUploader

  # ---产品列表位置调整---
  acts_as_list

  # --------隐藏---
  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end


#---- 收藏功能 ---
  belongs_to :user
  has_many :collects
  has_many :members, through: :collects, source: :user
end
