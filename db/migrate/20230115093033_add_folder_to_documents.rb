class AddFolderToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :folder, foreign_key: true
  end
end
