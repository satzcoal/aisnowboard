class Product < ApplicationRecord
  validates_presence_of :name, :category_id, :brand_id

  belongs_to :category
  belongs_to :brand

  has_many :pictures
  has_one :main_picture, -> { order(:s_index) }, class_name: 'Picture'

  def as_json(options = {})
    super((options || {})).merge({:url => self.url})
  end

  def url
    main_picture.try(:url)
  end
end