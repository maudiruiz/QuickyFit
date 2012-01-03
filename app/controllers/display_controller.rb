class DisplayController < ApplicationController
  
  def index
    
    if (not params[:number1].nil?) and (params[:number1] != "")
      item1 = Item.find(params[:number1])
    elsif not params[:quiero].nil?
      item1 = Item.find(:first, :conditions => ['lower(description) LIKE ?', "%#{params[:quiero].downcase}%"])
    end

    if (not params[:number2].nil?) and (params[:number2] != "")
      item2 = Item.find(params[:number2])
    elsif not params[:tengo].nil?
      item2 = Item.find(:first, :conditions => ['lower(description) LIKE ?', "%#{params[:tengo].downcase}%"])
    end

    if (item1 and item2)
      @itemsok = Contribution.where("first_item_id = ?",item1.id).where("second_item_id = ?",item2.id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contributions }
    end
  end
  
  def get_drugs
    render :json => Item.search(params[:term])
  end
end
