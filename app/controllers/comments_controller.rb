class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :update, :destroy]
  

  def new
  end

  def create
    @comment = Comment.new(comment_params)  
    @entry = @comment.entry
    if @comment.save
      redirect_to @entry
    else
      flash[:danger] = "Comment has not been posted"
      redirect_to @entry
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :entry_id)
  end
end
