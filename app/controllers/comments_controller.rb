class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def index
  end
  def create
    @forem = Forem.find_by_id(params[:forem_id])
    @comment = @forem.comments.new(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "comment posted!"
      redirect_to   forem_path(@forem.id)
    else
    end
  end
  def new
    @comment = Comments.new
  end
end
