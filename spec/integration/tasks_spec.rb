require 'spec_helper'

describe 'Tasks' do
  describe 'Adding a task' do
    it 'creates a task with a description' do
      visit '/'
      fill_in "Description", :with => 'This describes a task!'
      click_on "Create Task"
      page.should have_content "This describes a task!"
    end

    it 'displays all tasks after creation' do
      visit '/'
      2.times do |counter|
        fill_in "Description", :with => "Task Description #{counter}"
        click_on "Create Task"
      end
      page.should have_content "Task Description 0"
      page.should have_content "Task Description 1"      
    end
  end
end
