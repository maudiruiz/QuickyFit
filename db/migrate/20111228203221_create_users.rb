class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :facebook_id, :limit => 8

      t.timestamps
    end
  end
end
