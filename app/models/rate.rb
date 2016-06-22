class Rate < ApplicationRecord
  validates_presence_of :name, :category_id

  belongs_to :category
end
