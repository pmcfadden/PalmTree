class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
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
    @survey = Survey.new(:survey)

    if @survey.save
      redirect_to @survey
    else
      render action: "new"
    end
  end
end
