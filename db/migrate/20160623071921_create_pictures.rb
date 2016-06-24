class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :product_id
      t.integer :s_index
      t.string :url
      t.boolean :is_valid
      t.boolean :is_deleted
      t.integer :ori_id

      t.timestamps
    end
  end
end
