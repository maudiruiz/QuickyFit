class Contribution < ActiveRecord::Base
  belongs_to :first_item, :class_name => "Item", :foreign_key => :first_item_id
  belongs_to :second_item, :class_name => "Item", :foreign_key => :second_item_id
  belongs_to :user
end
