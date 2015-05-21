class QuestionsController < ApplicationController
  def index
    @questions = Question.all()
  end

  def new 
    @question = Question.new()
  end

  def edit
  end


  def create
    @question = Question.new(subject:params[:question][:subject], level: params[:question][:level])
    @question.save
    redirect_to questions_path
  end

  def update
  end

  def destroy
  end

  private
  
  def question_params
    params.require(:question).permit(:subject, :level)
  end
end
