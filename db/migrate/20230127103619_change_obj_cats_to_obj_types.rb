class ChangeObjCatsToObjTypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :obj_categories, :obj_types
  end
end
