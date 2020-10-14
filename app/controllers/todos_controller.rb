class TodosController < ApplicationController

  def index
    @todos = Todo.all
    render json: @todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todo
    end
  end

  def destroy
    Todo.find(params[:id]).destroy
    render json: params[:id]
  end

  private
  def todo_params
    params.require(:todo).permit(:text)
  end
end
