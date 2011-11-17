class ResponsesController < ApplicationController

  def update
    @response = Response.find(params[:id])
    if @response.update_attributes(params[:response])
      redirect_to Survey.find(@response.question.survey.id)
    else
      render :action => 'respond', :controller => 'surveys'
    end
  end

  def update_individual
    @responses = Response.update(params[:responses].keys, params[:responses].values).reject {|p| p.errors.empty?}
    flash[:notice] = "Responses updated"
    redirect_to Project.find(params[:survey_id])
  end
end
