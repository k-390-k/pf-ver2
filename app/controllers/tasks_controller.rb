class TasksController < ApplicationController
  def index
    @tasks = Task.new
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to tasks_path
    end
  end


  def edit
  end

  private
  def task_params
    params.require(:task).permit(:name,:description)
  end
end
