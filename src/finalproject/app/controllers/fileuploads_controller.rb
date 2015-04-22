class FileuploadsController < ApplicationController
  before_action :set_fileupload, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fileuploads = Fileupload.all
    respond_with(@fileuploads)
  end

  def show
    respond_with(@fileupload)
  end

  def new
    @fileupload = Fileupload.new
    respond_with(@fileupload)
  end

  def edit
  end

  def create
    @fileupload = Fileupload.new(fileupload_params)
    @fileupload.save
    respond_with(@fileupload)
  end

  def update
    @fileupload.update(fileupload_params)
    respond_with(@fileupload)
  end

  def destroy
    @fileupload.destroy
    respond_with(@fileupload)
  end

  private
    def set_fileupload
      @fileupload = Fileupload.find(params[:id])
    end

    def fileupload_params
      params.require(:fileupload).permit(:user_id, :filename)
    end
end
