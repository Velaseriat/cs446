class HomebasesController < ApplicationController
  before_action :set_homebasis, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @homebases = Homebase.all
    respond_with(@homebases)
  end

  def show
    respond_with(@homebasis)
  end

  def new
    @homebasis = Homebase.new
    respond_with(@homebasis)
  end

  def edit
  end

  def create
    @homebasis = Homebase.new(homebase_params)
    @homebasis.save
    respond_with(@homebasis)
  end

  def update
    @homebasis.update(homebase_params)
    respond_with(@homebasis)
  end

  def destroy
    @homebasis.destroy
    respond_with(@homebasis)
  end

  private
    def set_homebasis
      @homebasis = Homebase.find(params[:id])
    end

    def homebasis_params
      params.require(:homebasis).permit(:name)
    end
end
