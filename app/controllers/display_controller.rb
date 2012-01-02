class DisplayController < ApplicationController
  def index
    @items = Item.all
    @contributions = Contribution.all
    @number1 = params[:number1]
    @number2 = params[:number2]
    @itemsok = Contribution.where("first_item_id = ?",@number1).where("first_item_grade = ?",@number2)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contributions }
    end
  end

end
