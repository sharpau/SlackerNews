class SubmissionsController < ApplicationController
  def new
  end
  
  def create
    @submission = Submission.new(submission_params)
    
    @submission.save
    redirect_to @submission
  end
  
  def show
    @submission = Submission.find(params[:id])
  end
  
  def index
    @submissions = Submission.all
  end
  
  private
  def submission_params
    params.require(:submission).permit(:title, :link, :text)
  end
end
