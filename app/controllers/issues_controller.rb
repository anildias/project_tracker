class IssuesController < ApplicationController
  def index
  	@project = Project.includes(issues: [:reporter, :assignee]).find(params[:project_id])
  	@issues = @project.issues
  end

  def show
  	@issue = Issue.includes(:reporter, :assignee, :project).find(params[:id])
  end
end
