class AddUniqToFolder < ActiveRecord::Migration[7.0]
  def change
    add_index :folders, :name, unique: true
  end
end
