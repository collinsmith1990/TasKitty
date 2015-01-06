require 'rails_helper'

RSpec.describe "CreateNewProjects", :type => :request do
  describe "CreateNewProject" do
    it "Creates a new project" do
      visit projects_path

      click_link "Create New Project"
      
      expect(current_path).to eq(new_project_path)

      fill_in "project_title", :with => "TestTitle"
      click_button "Create Project"

      expect(current_path).to eq(projects_path)
      find_link('TestTitle').visible?
    end
  end
end
