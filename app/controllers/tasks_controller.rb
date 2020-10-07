class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id:params[:id])
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
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update!(task_params)
      redirect_to tasks_path
    end
  end 

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name,:description)
  end
end
