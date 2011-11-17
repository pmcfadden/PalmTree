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
    date = Date.new(params[:survey["date_of_survey(1i)"]].to_i, params[:survey["date_of_survey(2i)"]].to_i, params[:survey["date_of_survey(3i)"]].to_i)
    @survey = Survey.new(:date_of_survey => date)

    if @survey.save
      redirect_to @survey
    else
      render action: "new"
    end
  end
end
