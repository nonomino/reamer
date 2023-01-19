class AddObjTypetoDocuments < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :obj_type, foreign_key: true
  end
end
