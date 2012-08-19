require 'spec_helper'

describe TasksController do
  describe '#complete' do
    it 'marks a task as complete' do
      task = Task.create
      put :complete, :id => task.id
      task.reload.should be_complete
    end
  end
end
