class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :first_item_id
      t.integer :second_item_id
      t.integer :user_id
      t.float :first_item_grade
      t.float :second_item_grade
      t.text :opinion

      t.timestamps
    end
  end
end
