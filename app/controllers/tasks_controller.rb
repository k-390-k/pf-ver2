class TasksController < ApplicationController
  def index
    @tasks = Task.new
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end
end
