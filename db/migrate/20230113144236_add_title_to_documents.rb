class AddTitleToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :title, :string
  end
end
