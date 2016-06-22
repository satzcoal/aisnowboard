class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :country_id
      t.boolean :is_deleted, default: false
      t.integer :ori_id

      t.timestamps
    end
  end
end
