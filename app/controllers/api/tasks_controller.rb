class Api::TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def create
    @task = Task.create!(task_params)
  end

  def update
    @task = Task.find(params[:id])
      @task.update(task_params)
    redirect_to api_task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])

    redirect_to api_tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :priority_level, :completion_time)
  end
end
