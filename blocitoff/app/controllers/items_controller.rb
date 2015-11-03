class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id]) if params[:id].present?
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      redirect_to current_user, notice: "Item has been saved successfully."
    else
      flash[:error] = "There was an error creating this item."
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
