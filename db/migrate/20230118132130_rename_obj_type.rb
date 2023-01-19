class RenameObjType < ActiveRecord::Migration[7.0]
  def change
  rename_column :obj_types, :type, :doctype
  end
end
