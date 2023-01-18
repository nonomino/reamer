class AddDocTagToDocs < ActiveRecord::Migration[7.0]
  def change
  add_reference :documents_tags, :documents, foreign_key: true
  end
end
