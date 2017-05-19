class FixProdcutIdToCollects < ActiveRecord::Migration[5.0]
  def change
    rename_column :collects, :prodcut_id, :product_id
  end
end
