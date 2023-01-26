class ChangeObjTypesToObjCategories < ActiveRecord::Migration[7.0]
  def change
    rename_table :obj_types, :obj_categories
  end
end
