class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    # Récupérer la totalité des tâches
    @tasks = Task.all
  end

  def show
    # Récupérer une seule tâche en fonction de l'id
  end

  def new
    # Faire apparaître le formulaire
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    # Récupérer la task à éditer
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
