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
    base_record = Todo.find(params[:id])
    if base_record.destroy
      render json: base_record
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:text)
  end
end
