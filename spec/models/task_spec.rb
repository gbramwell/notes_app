require 'spec_helper'

describe Task do
  it "creates a task with a description" do
    description = 'this is a task'
    task = Task.create(:description => description)
    task.description.should == description
  end

  describe "#complete!" do
    it "marks a task as complete" do
      task = Task.new
      task.complete!
      task.should be_complete
    end
  end
end
