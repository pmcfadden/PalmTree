class ResponsesController < ApplicationController

  def show
    @survey_response = Response.find(params[:id])
  end
end
