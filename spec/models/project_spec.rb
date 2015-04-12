require 'rails_helper'

  describe "initianlization" do
    let(:project) { Project.new }
    let(:task) { Task.new }

    describe Project do
    it "considers a project with no tasks to be done" do
      expect(project).to be_done
    end

    it "is not done with an incomplete task" do
      project.tasks << task
      expect(project).not_to be_done
    end
  end

  describe "project done state" do
    let(:project) { Project.new }
    let(:task) { Task.new }

    it "marks a project done if its tasks are done" do
      project.tasks << task
      task.mark_completed
      expect(project).to be_done
    end
  end
end