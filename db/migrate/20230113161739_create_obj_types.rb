class CreateObjTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :obj_types do |t|
      t.string :type
      t.integer :max_length

      t.timestamps
    end
  end
end
