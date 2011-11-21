class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @project = Project.find(params[:project_id])
    @survey = @project.surveys.build
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
    @question = Question.new
  end
  
  def respond
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
    @responses = @survey.responses
  end

  def create
    @project = Project.find(params[:project_id])
    @survey = @project.surveys.build(params[:survey])

    if @survey.save
      redirect_to @project
    else
      render action: "new"
    end
  end
end
