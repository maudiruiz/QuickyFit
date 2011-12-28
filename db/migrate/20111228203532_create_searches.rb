class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :first_item_id
      t.integer :second_item_id
      t.integer :user_id
      t.boolean :is_contribution

      t.timestamps
    end
  end
end
