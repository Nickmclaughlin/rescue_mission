class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      flash[:notice] = "Error: Your title must be at least 2 characters long."
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
    @comments = @question.comments
  end

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      flash[:notice] = "Please fill out form correctly"
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      redirect_to questions_path
    else
      render 'show'
    end
  end


  private
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
