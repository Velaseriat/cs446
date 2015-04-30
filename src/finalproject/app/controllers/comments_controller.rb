class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    if !user_signed_in?
      redirect_to :root
    else
      if current_user.user?
        redirect_to :root
      end
    end
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
  end

  # GET /comments/new
  def new
    if !user_signed_in?
      redirect_to :root
    end
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    if !user_signed_in?
      redirect_to :root
    end
  end

  # POST /comments
  # POST /comments.json
  def create
    if !user_signed_in?
      redirect_to :root
    end
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js {  }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if !user_signed_in?
      redirect_to :root
    end
    respond_to do |format|
      if @comment.update(comment_params)
        format.js {  }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    if !user_signed_in?
      redirect_to :root
    end
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :filedownload_id, :data)
    end
end
