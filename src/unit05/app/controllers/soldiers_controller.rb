class SoldiersController < ApplicationController
  before_action :set_soldier, only: [:show, :edit, :update, :destroy]

  # GET /soldiers
  # GET /soldiers.json
  def index
    @brigade = Brigade.find(params[:brigade_id])
    @soldiers = Soldier.all
  end

  # GET /soldiers/1
  # GET /soldiers/1.json
  def show
    @brigade = Brigade.find(params[:brigade_id])
    @soldier = Soldier.find(params[:id])
  end

  # GET /soldiers/new
  def new
    @brigade = Brigade.find(params[:brigade_id])
    @soldier = Soldier.new
  end

  # GET /soldiers/1/edit
  def edit
    @brigade = Brigade.find(params[:brigade_id])
  end

  # POST /soldiers
  # POST /soldiers.json
  def create
    @soldier = Soldier.new(soldier_params)

    respond_to do |format|
      if @soldier.save
        format.html { redirect_to [@soldier.brigade, @soldier], notice: 'Soldier was successfully created.' }
        format.json { render :show, status: :created, location: @soldier }
      else
        format.html { render :new }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soldiers/1
  # PATCH/PUT /soldiers/1.json
  def update
    respond_to do |format|
      if @soldier.update(soldier_params)
        format.html { redirect_to [@soldier.brigade, @soldier], notice: 'Soldier was successfully updated.' }
        format.json { render :show, status: :ok, location: @soldier }
      else
        format.html { render :edit }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soldiers/1
  # DELETE /soldiers/1.json
  def destroy
    @brigade = Brigade.find(params[:brigade_id])
    @soldier = @brigade.soldiers.find(params[:id])
    @soldier.destroy
    respond_to do |format|
      format.html { redirect_to @brigade, notice: 'Soldier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soldier
      @soldier = Soldier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soldier_params
      params.require(:soldier).permit(:first_name, :last_name, :atk, :def, :paradigm, :brigade_id)
    end
end
