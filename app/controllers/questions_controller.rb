class QuestionsController < ApplicationController
  def index
    @questionable = find_questionable
    @questions = []
    @questions = @questionable.questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @questionable = find_questionable
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @questionable = find_questionable
    @question = @questionable.questions.build(params[:question])
    if @question.save
      @response = Response.new(:question_id => @question.id)
      @response.save
      redirect_to @questionable
    else render action: 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      redirect_to @question, notice: 'Question was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_url
  end

  def find_questionable
    params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
  end
end
