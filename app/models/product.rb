class Product < ApplicationRecord
  validates_presence_of :name, :category_id, :brand_id, :is_deleted, :ori_id

  belongs_to :category
  belongs_to :brand
end