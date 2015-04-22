class FiledownloadsController < ApplicationController
  before_action :set_filedownload, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @filedownloads = Filedownload.all
    respond_with(@filedownloads)
  end

  def show
    respond_with(@filedownload)
  end

  def new
    @filedownload = Filedownload.new
    respond_with(@filedownload)
  end

  def edit
  end

  def create
    @filedownload = Filedownload.new(filedownload_params)
    @filedownload.save
    respond_with(@filedownload)
  end

  def update
    @filedownload.update(filedownload_params)
    respond_with(@filedownload)
  end

  def destroy
    @filedownload.destroy
    respond_with(@filedownload)
  end

  private
    def set_filedownload
      @filedownload = Filedownload.find(params[:id])
    end

    def filedownload_params
      params.require(:filedownload).permit(:user_id, :fileupload_id)
    end
end
