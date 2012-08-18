require 'spec_helper'

describe 'Tasks' do
  describe 'Adding a task' do
    it 'creates a task with a description' do
      visit '/'
      fill_in "Description", :with => 'This describes a task!'
      click_on "Create Task"
      page.should have_content "This describes a task!"
    end
  end
end
