class AddTagtoDocuments < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :tag, foreign_key: true
  end
end
