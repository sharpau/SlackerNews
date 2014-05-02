class SubmissionsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy

  def new
    @submission = Submission.new
  end
  
  def create
    @submission = Submission.new(submission_params)
    
    if @submission.save
      redirect_to @submission
    else
      render 'new'
    end
  end
  
  def show
    @submission = Submission.find(params[:id])
  end
  
  def index
    @submissions = Submission.all
  end
  
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    
    redirect_to submissions_path
  end
  
  def update
    @submission = Submission.find(params[:id])
    @submission.votes += 1
    @submission.save
    
    redirect_to submissions_path
  end
  
  private
  def submission_params
    params.require(:submission).permit(:title, :link, :text)
  end
end
