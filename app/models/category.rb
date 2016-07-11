class Category < ApplicationRecord
  include SoftMethodHelper

  validates_presence_of :name, :level

  belongs_to :main_category, :class_name => 'Category', :foreign_key => :main_category_id
  has_many :sub_categories, :class_name => 'Category', :foreign_key => :main_category_id
  has_many :products
  has_many :rates

end
