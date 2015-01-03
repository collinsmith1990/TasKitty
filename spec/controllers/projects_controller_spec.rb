require 'rails_helper'
require 'project'

RSpec.describe ProjectsController, :type => :controller do

  describe Project do
    it "should create a new project" do
      expect(Project.all.count).to eq(0)

      post :project, { title: "My New Project" }
      expect(Project.all.count).to eq(1)
    end
  end
end
