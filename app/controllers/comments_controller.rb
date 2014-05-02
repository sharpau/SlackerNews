class CommentsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy

  def create
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.create(comment_params)
    redirect_to submission_path(@submission)
  end
  
  def destroy
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.find(params[:id])
    @comment.destroy
    redirect_to submission_path(@submission)
  
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
