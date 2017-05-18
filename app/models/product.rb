class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :price, numericality: { greater_than: 0}

  # ---上传图片---
  mount_uploader :image, ImageUploader
  # ---产品列表位置调整---
  acts_as_list
  # -----------
  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
