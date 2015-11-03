class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find(params[:id]) if params[:id].present?
    unless @user
      @user = current_user
    end
    @item = Item.new
  end

end
