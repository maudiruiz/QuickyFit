class DisplayController < ApplicationController
  
  def index
    size1 = params[:size1]
    number1 = params[:number1]
    number2 = params[:number2]
    quiero = params[:quiero]
    tengo = params[:tengo]
    
    if (not number1.nil?) and (number1 != "")
      item1 = Item.find(number1)
    elsif not quiero.nil?
      quiero.strip!
      item1 = Item.find(:first, :conditions => ['lower(description) LIKE ?', "%#{quiero.downcase}%"])
    end

    if (not number2.nil?) and (number2 != "")
      item2 = Item.find(number2)
    elsif not tengo.nil?
      tengo.strip!
      item2 = Item.find(:first, :conditions => ['lower(description) LIKE ?', "%#{tengo.downcase}%"])
    end
    if (item1 and item2)
      @itemsok = Contribution.where("first_item_id = ?",item1.id).where("second_item_id = ?",item2.id)

    elsif (item1 and item2 and size1)
      
      @itemsok = Contribution.where("first_item_id = ?",item1.id).where("second_item_id = ?",item2.id).where("second_item_grade = ?",size1)
  
  
      respond_to do |format|
        format.js
        format.html
       
      end
    end

  end
  
  def get_drugs
    render :json => Item.search(params[:term])
  end
end
