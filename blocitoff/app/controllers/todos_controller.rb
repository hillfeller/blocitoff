class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save

    if @todo.save
      redirect_to @todo, notice: "TODO has been saved successfully."
    else
      flash[:error] = "There was an error creating this TODO."
      render :new
    end
  end

  def show
    @todo = Todo.find params[:id]
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
