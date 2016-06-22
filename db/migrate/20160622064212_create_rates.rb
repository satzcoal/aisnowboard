class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.string :name
      t.integer :category_id
      t.integer :max_num, default: 5

      t.timestamps
    end
  end
end
