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
      project.surveys.create(@template.attributes)
      project.save
    end
    redirect_to :root
  end
end
