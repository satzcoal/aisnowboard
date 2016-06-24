class Category < ApplicationRecord
  include SoftMethodHelper

  validates_presence_of :name, :level

  has_many :products
  has_many :rates

end
