require 'spec_helper'

describe 'Tasks' do
  before do
    visit '/'
  end

  describe 'default landing page' do
    it 'shows tasks on the homepage' do
      create_task 'Find this task!'
      visit '/'
      page.should have_content 'Find this task!'
    end
  end

  describe 'Adding a task' do
    it 'creates a task with a description' do
      create_task 'This describes a task!'
      page.should have_content "This describes a task!"
    end

    it 'displays all tasks after creation' do
      2.times do |counter|
        create_task "Task Description #{counter}"
      end
      page.should have_content "Task Description 0"
      page.should have_content "Task Description 1"      
    end
  end

  describe 'Deleting a task' do
    it 'deletes a task' do
      create_task 'I will be deleted soon!'
      click_on 'Delete'
      page.should have_no_content 'I will be deleted soon!'
    end
  end

  describe 'Completing tasks' do
    it 'does not remove a task when marked as complete' do
      create_task 'I will complete this task'
      click_on 'Complete'
      page.should have_content 'I will complete this task'
      page.should have_no_content 'Complete'
    end
  end

  def create_task(task_name)
    fill_in "Description", :with => task_name
    click_on "Create Task"
  end
end
