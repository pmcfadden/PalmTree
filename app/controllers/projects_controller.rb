class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project
    else
      render action: "new"
    end
  end

  def send_email
    @projects = Project.all
    @projects.each do |project|
      ProjectMailer.survey_email(project).deliver
    end
    redirect_to :root
  end
end
