class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :type_id
      t.string :description
      t.integer :parent_id

      t.timestamps
    end
  end
end
