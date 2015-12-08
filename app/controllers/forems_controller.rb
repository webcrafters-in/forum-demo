class ForemsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @forems = Forem.all
    respond_to do |format|
      format.html #index.html
    end
  end
  def create
    @forem = Forem.new(params[:forem])
    @forem.user_id = current_user.id
    if @forem.save
      flash[:notice] = "Forum created successfully"
      redirect_to root_url
    else
#      render 'new'
    end
  end
  def new
    @forem = Forem.new
#    @comment = @forem.comments.build
  end
  def show
    @forem = Forem.find_by_id(params[:id])
    respond_to do |format|
      format.html #show.html
    end
  end
end
