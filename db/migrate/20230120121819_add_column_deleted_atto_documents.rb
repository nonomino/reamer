class AddColumnDeletedAttoDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :deleted_at, :timestamp
  end
end
