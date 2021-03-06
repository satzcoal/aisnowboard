class Category < ApplicationRecord
  validates_presence_of :name, :level, :is_deleted, :ori_id

  has_many :products
  has_many :rates

end
