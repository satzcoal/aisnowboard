ActiveAdmin.register Category do
  permit_params :name, :level, :main_category_id, :ident_name

  menu parent: 'Contents'

  sidebar "Products", only: [:show, :edit] do
    ul do
      li link_to "Products", admin_category_products_path(resource)
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :level
    column :main_category_id
    column :ident_name
    column :created_at
    actions
  end

  filter :name
  filter :level
  filter :main_category_id
  filter :created_at

  form do |f|
    f.inputs "Category Details" do
      f.input :name
      f.input :level
      f.input :main_category_id
      f.input :ident_name
    end
    f.actions
  end

end
