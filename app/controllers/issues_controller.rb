class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /issues
  def index
    @project = Project.find(params[:project_id])
    @issues = @project.issues
  end

  # GET /issues/1
  def show
  end

  # GET /issues/new
  def new
    @project = Project.find(params[:project_id])
    @issue = Issue.new
  end

  # GET /issues/1/edit
  def edit
  end

  # POST /issues
  def create
    @project = current_user.projects.find(params[:project_id])
    @issue = @project.issues.new(issue_params)

    if @issue.save
      redirect_to project_issues_path, notice: 'Issue was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /issues/1
  def update
    if @issue.update(issue_params)
      redirect_to project_issues_path , notice: 'Issue was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /issues/1
  def destroy
    @issue.destroy
    redirect_to project_issues_path, notice: 'Issue was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @project = Project.find(params[:project_id])
      @issue = @project.issues.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def issue_params
      params.require(:issue).permit(:name, :description, :issue_status_id, :user_id, :project_id)
    end
end
