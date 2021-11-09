class TasksController < ApplicationController
  # Execute find_task before specific CRUD actions
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # Read all tasks (4)
  def index
    @tasks = Task.all
  end
  # Create a new task (5)
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
    # Add redirect after submiting the form
    redirect_to task_path(@task)
  end
  # Read a task (4)
  def show
  end
  # Update a task (6)
  def edit
  end
  def update
    @task.update(task_params)
    # Add redirect after submiting the form
    redirect_to task_path(@task)
  end
  # Delete a task (7)
  def destroy
    @task.destroy
    # x - Add redirect to show page after submiting the form
    redirect_to tasks_path
  end

  # Private methods
  # Find the restaurant based on the id parameter
  def set_task
    @task = Task.find(params[:id])
  end
  # Get task parameters
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
