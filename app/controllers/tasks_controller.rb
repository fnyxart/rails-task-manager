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
  # Update a task
  def edit
  end
  def update
  end
  # Delete a task
  def destroy
  end

  # Private methods
  # Find the restaurant based on the id parameter
  def set_task
    @task = Task.find(params[:id])
  end
end
