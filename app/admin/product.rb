ActiveAdmin.register Product do
  permit_params :name, :price, :year, :category_id, :brand_id, :style, :level, :width, :is_valid

  belongs_to :category
  navigation_menu :category

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :year
    column :category_id
    column :brand_id
    column :style
    column :level
    column :width
    column :is_valid
    column :created_at
    actions
  end

  filter :name
  filter :price
  filter :year
  filter :category_id
  filter :brand_id
  filter :style
  filter :level
  filter :width
  filter :is_valid
  filter :created_at

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :price
      f.input :year
      f.input :category_id
      f.input :brand_id
      f.input :style
      f.input :level
      f.input :width
      f.input :is_valid
      f.input :created_at
    end
    f.actions
  end
end
