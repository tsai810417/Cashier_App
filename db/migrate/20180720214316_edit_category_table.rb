class EditCategoryTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :CreateCategories, :name
  end
end
