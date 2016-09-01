class Category < ApplicationRecord
  include SoftMethodHelper

  validates_presence_of :name, :level

  belongs_to :main_category, :class_name => 'Category', :foreign_key => :main_category_id
  has_many :sub_categories, :class_name => 'Category', :foreign_key => :main_category_id
  has_many :products
  has_many :rates

  scope :root_categories, -> { where(:main_category_id => nil) }
  scope :snowboard_categories, -> { where(:main_category_id => 1) }

  def format_json(type)
    case type
      when 'top_nav'
        sub_json = self.sub_categories.map do |s_cate|
          s_cate.format_json(type)
        end
        sub_json = nil if sub_json.blank?
        {
            :name => self.name,
            :url => self.url,
            :ident_name => self.ident_name,
            :sub_categories => sub_json
        }
    end
  end

  def url
    "/#{ident_name}"
  end
end
