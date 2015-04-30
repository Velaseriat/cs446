class FilefantasiesController < ApplicationController
  before_action :set_filefantasy, only: [:show, :edit, :update, :destroy]

  # GET /filefantasies
  # GET /filefantasies.json
  def index
    @filedownloads = Filedownload.all
  end

  # GET /filefantasies/1
  # GET /filefantasies/1.json
  def show
    if !user_signed_in?
      redirect_to :root
    end
  end

  # GET /filefantasies/new
  def new
    if !user_signed_in?
      redirect_to :root
    end
    @filefantasy = Filefantasy.new
  end

  # GET /filefantasies/1/edit
  def edit
    if !user_signed_in?
      redirect_to :root
    end
  end

  # POST /filefantasies
  # POST /filefantasies.json
  def create
    if !user_signed_in?
      redirect_to :root
    end
    @filefantasy = Filefantasy.new(filefantasy_params)

    respond_to do |format|
      if @filefantasy.save
        format.html { redirect_to @filefantasy, notice: 'Filefantasy was successfully created.' }
        format.json { render :show, status: :created, location: @filefantasy }
      else
        format.html { render :new }
        format.json { render json: @filefantasy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filefantasies/1
  # PATCH/PUT /filefantasies/1.json
  def update
    if !user_signed_in?
      redirect_to :root
    end
    respond_to do |format|
      if @filefantasy.update(filefantasy_params)
        format.html { redirect_to @filefantasy, notice: 'Filefantasy was successfully updated.' }
        format.json { render :show, status: :ok, location: @filefantasy }
      else
        format.html { render :edit }
        format.json { render json: @filefantasy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filefantasies/1
  # DELETE /filefantasies/1.json
  def destroy
    if !user_signed_in?
      redirect_to :root
    end
    @filefantasy.destroy
    respond_to do |format|
      format.html { redirect_to filefantasies_url, notice: 'Filefantasy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filefantasy
      @filefantasy = Filefantasy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filefantasy_params
      params.require(:filefantasy).permit(:name)
    end
end
