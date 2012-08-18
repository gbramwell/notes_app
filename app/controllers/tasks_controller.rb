class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to :action => 'index'
    end
  end
end
