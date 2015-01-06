require 'rails_helper'

RSpec.describe "CreateNewTasks", :type => :request do
  describe "CreateNewTasks" do
    it "Creates a new task" do
      project = FactoryGirl.create(:project)
      visit project_path(project)

      click_link "Create New Task"

      expect(current_path).to eq(new_project_task_path(project))

      fill_in "task_content", :with => "Test a task"
      click_button "Create Task"

      expect(current_path).to eq(project_path(project))
      expect(page).to have_content("Test a task")      
    end
  end
end
