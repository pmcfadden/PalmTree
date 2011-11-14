class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = Question.find(:all, :conditions => ["survey_id = ?", params[:id]])
  end
end
