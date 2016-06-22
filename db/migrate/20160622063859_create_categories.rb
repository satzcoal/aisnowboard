class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :level
      t.integer :main_category_id
      t.boolean :is_deleted, default: false
      t.integer :ori_id

      t.timestamps
    end
  end
end
