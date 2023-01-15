class AddDocumentToFolders < ActiveRecord::Migration[7.0]
  def change
    add_reference :folders, :document, foreign_key: true
  end
end
