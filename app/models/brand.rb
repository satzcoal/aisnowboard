class Brand < ApplicationRecord
  validates_presence_of :name, :country_id, :is_deleted, :ori_id

  belongs_to :country
end
