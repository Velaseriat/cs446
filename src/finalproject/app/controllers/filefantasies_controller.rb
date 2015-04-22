class FilefantasiesController < ApplicationController
  before_action :set_filefantasy, only: [:show, :edit, :update, :destroy]

  # GET /filefantasies
  # GET /filefantasies.json
  def index
    @filefantasies = Filefantasy.all
  end

  # GET /filefantasies/1
  # GET /filefantasies/1.json
  def show
  end

  # GET /filefantasies/new
  def new
    @filefantasy = Filefantasy.new
  end

  # GET /filefantasies/1/edit
  def edit
  end

  # POST /filefantasies
  # POST /filefantasies.json
  def create
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
      params[:filefantasy]
    end
end
