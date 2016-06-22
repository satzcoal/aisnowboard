class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.integer :year, default: 0
      t.integer :category_id
      t.integer :brand_id
      t.string :style
      t.string :level
      t.string :width
      t.boolean :is_valid, default: true
      t.boolean :is_deleted, default: false
      t.integer :ori_id

      t.timestamps
    end

  end
end
