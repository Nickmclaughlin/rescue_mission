class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  private
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
