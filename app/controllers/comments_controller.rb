class CommentsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.create(comment_params)

    if @comment.save
      redirect_to question_path(@question)
    else
      flash[:notice] = "Error: You must enter a username."
      redirect_to question_path(@question)
    end
  end

  def show
    # @comment = Comment.find(params[:id])
  end

  private
    def comment_params
      params.require(:comment).permit(:username, :description)
    end
end
