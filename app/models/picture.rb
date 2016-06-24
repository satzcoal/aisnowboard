class Picture < ApplicationRecord
  include SoftMethodHelper
  validates_presence_of :product_id, :s_index, :url

  belongs_to :product
end
