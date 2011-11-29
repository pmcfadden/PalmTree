class TemplatesController < ApplicationController
  def new
    @template = Template.new
  end

  def create
    @template = Template.create(params[:template])
    redirect_to @template
  end

  def show
    @template = Template.find(params[:id])
  end

  def apply
    @template = Template.find(params[:id])
    Project.all.each do |project|
      survey = project.surveys.create(@template.attributes)
      @template.questions.each do |question|
        new_question = survey.questions.create(question.attributes)
        Response.new(:question_id => new_question.id).save
      end
      project.save
    end
    redirect_to :root
  end
end
