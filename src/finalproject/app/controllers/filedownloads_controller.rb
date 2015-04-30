class FiledownloadsController < ApplicationController
  before_action :set_filedownload, only: [:show, :edit, :update, :destroy]

  # GET /filedownloads
  # GET /filedownloads.json
  def index
    @filedownloads = Filedownload.all
  end

  # GET /filedownloads/1
  # GET /filedownloads/1.json
  def show
    @comment = Comment.new
    @comments = Filedownload.find(params[:id]).comments
    @fileupload = Filedownload.find(params[:id]).fileupload
    set_filedownload
  end

  # GET /filedownloads/new
  def new
    if !user_signed_in?
      redirect_to :root
    end
    @filedownload = Filedownload.new
  end

  # GET /filedownloads/1/edit
  def edit
    if !user_signed_in?
      redirect_to :root
    end
  end

  def download_file fn
    send_file File.join(Rails.root, 'public/' + fn.fileupload.filename.to_s), :x_sendfile=>true
  end

  # POST /filedownloads
  # POST /filedownloads.json
  def create
    if !user_signed_in?
      redirect_to :root
    end
    @filedownload = Filedownload.new(filedownload_params)
    if @filedownload.save
      download_file @filedownload
    end

  end

  # PATCH/PUT /filedownloads/1
  # PATCH/PUT /filedownloads/1.json
  def update
    if !user_signed_in?
      redirect_to :root
    end
    download_file @filedownload
    if @filedownload.update(filedownload_params)
       download_file @filedownload
    end
  end

  # DELETE /filedownloads/1
  # DELETE /filedownloads/1.json
  def destroy
    if !user_signed_in?
      redirect_to :root
    end
    @filedownload.destroy
    respond_to do |format|
      format.html { redirect_to filedownloads_url, notice: 'Filedownload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filedownload
      @filedownload = Filedownload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filedownload_params
      params.require(:filedownload).permit(:user_id, :fileupload_id)
    end
end
