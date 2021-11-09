class TasksController < ApplicationController
  # Execute find_task before specific CRUD actions
  before_action :find_task, only[:show, :edit, :update, :destroy]
  # Read all tasks
  def index
  end
  # Create a new task
  def new
  end
  def create
  end
  # Read a task
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
  def find_task

  end
end
