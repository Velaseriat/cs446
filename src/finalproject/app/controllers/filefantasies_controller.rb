class FilefantasiesController < ApplicationController
  before_action :set_filefantasy, only: [:show, :edit, :update, :destroy]

  # GET /filefantasies
  # GET /filefantasies.json
  def index
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "Bj4Yxox6Mpntj0mCbQi7jNapj"
      config.consumer_secret     = "Z28KO0EUITkl2V6pHx9w6BwZkbErAMXQqffPRxLCmx1muoNCUj"
      config.access_token        = "3242558760-vuE0EzAOCMnh4NyjO3OFIgZL1B5LgVCCWv1Cxpf"
      config.access_token_secret = "IOCTGMxCaHMBJMCIciHibh69hZjq50JecUSEObqaXj42w"
    end
    @num_friends = @client.home_timeline.take(1)[0].text
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
    end
    @filedownloads = Filedownload.all.limit(10)
  end

  # GET /filefantasies/1
  # GET /filefantasies/1.json
  def show
    if !user_signed_in?
      redirect_to :root
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
    end
  end

  # GET /filefantasies/new
  def new
    if !user_signed_in?
      redirect_to :root
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
    end
    @filefantasy = Filefantasy.new
  end

  # GET /filefantasies/1/edit
  def edit
    if !user_signed_in?
      redirect_to :root
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
    end
  end

  # POST /filefantasies
  # POST /filefantasies.json
  def create
    if !user_signed_in?
      redirect_to :root
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
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
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
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
    else
      if current_user.user?
        redirect_to :root
      end
    end
    if user_signed_in?
      if !current_user.first_name?
        redirect_to edit_user_path(current_user)
      end
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
