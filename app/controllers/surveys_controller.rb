class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
    @question = Question.new
  end
  
  def respond
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
  end
end
