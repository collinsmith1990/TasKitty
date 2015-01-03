require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    @project = Project.new(title: "New Test")
  end

  test "should be valid" do
    assert @project.valid?
  end
end
