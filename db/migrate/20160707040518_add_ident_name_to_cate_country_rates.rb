class AddIdentNameToCateCountryRates < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :ident_name, :string
    add_column :countries, :ident_name, :string
    add_column :rates, :ident_name, :string
  end
end
