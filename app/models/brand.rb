class Brand < ApplicationRecord
  include SoftMethodHelper
  
  validates_presence_of :name, :country_id

  belongs_to :country
end
