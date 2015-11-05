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

  def destroy
    @item = current_user.items.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item has been deleted"
    else
      flash[:error] = "Item could not be deleted"
    end
    redirect_to root_path

  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
