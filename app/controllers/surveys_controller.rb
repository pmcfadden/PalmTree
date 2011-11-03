class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
  end

  def show
    @survey = Survey.find(params[:id])
  end
end
