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
  end

  # GET /filedownloads/new
  def new
    @filedownload = Filedownload.new
  end

  # GET /filedownloads/1/edit
  def edit
  end

  # POST /filedownloads
  # POST /filedownloads.json
  def create
    @filedownload = Filedownload.new(filedownload_params)

    respond_to do |format|
      if @filedownload.save
        format.html { redirect_to @filedownload, notice: 'Filedownload was successfully created.' }
        format.json { render :show, status: :created, location: @filedownload }
      else
        format.html { render :new }
        format.json { render json: @filedownload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filedownloads/1
  # PATCH/PUT /filedownloads/1.json
  def update
    respond_to do |format|
      if @filedownload.update(filedownload_params)
        format.html { redirect_to @filedownload, notice: 'Filedownload was successfully updated.' }
        format.json { render :show, status: :ok, location: @filedownload }
      else
        format.html { render :edit }
        format.json { render json: @filedownload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filedownloads/1
  # DELETE /filedownloads/1.json
  def destroy
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
