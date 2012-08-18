class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      render :text => @task.description
    end
  end
end
