class FilefantasiesController < ApplicationController
  before_action :set_filefantasy, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @filefantasies = Filefantasy.all
    respond_with(@filefantasies)
  end

  def show
    respond_with(@filefantasy)
  end

  def new
    @filefantasy = Filefantasy.new
    respond_with(@filefantasy)
  end

  def edit
  end

  def create
    @filefantasy = Filefantasy.new(filefantasy_params)
    @filefantasy.save
    respond_with(@filefantasy)
  end

  def update
    @filefantasy.update(filefantasy_params)
    respond_with(@filefantasy)
  end

  def destroy
    @filefantasy.destroy
    respond_with(@filefantasy)
  end

  private
    def set_filefantasy
      @filefantasy = Filefantasy.find(params[:id])
    end

    def filefantasy_params
      params[:filefantasy]
    end
end
