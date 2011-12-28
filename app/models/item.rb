class Item < ActiveRecord::Base
  has_many :first_item_searches, :class_name => "Search", :foreign_key => "first_item_id", :order => ["created_at desc"]
  has_many :second_item_searches, :class_name => "Search", :foreign_key => "second_item_id", :order => ["created_at desc"]
  has_many :first_item_contributions, :class_name => "Contribution", :foreign_key => "first_item_id"
  has_many :second_item_contributions, :class_name => "Contribution", :foreign_key => "second_item_id"
  belongs_to :parent, :class_name => "Item", :foreign_key => :parent_id    

  def Item.get_children item_id
    Item.find(:all, :conditions => ["parent_id = ?", item_id])
  end

end
