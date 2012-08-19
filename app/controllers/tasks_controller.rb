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

  def destroy
    @task = Task.find(params[:id])

    @task.destroy
    redirect_to :action => 'index'
  end

  def complete
    @task = Task.find(params[:id])

    @task.complete!
    redirect_to :action => 'index'
  end
end
