class ParkeosController < ApplicationController
  before_action :set_parkeo, only: [:show, :edit, :update, :destroy]

  # GET /parkeos
  # GET /parkeos.json
  def index
    @parkeos = Parkeo.all
  end

  # GET /parkeos/1
  # GET /parkeos/1.json
  def show
  end

  # GET /parkeos/new
  def new
    @parkeo = Parkeo.new
  end

  # GET /parkeos/1/edit
  def edit
  end

  # POST /parkeos
  # POST /parkeos.json
  def create
    @parkeo = Parkeo.new(parkeo_params)

    respond_to do |format|
      if @parkeo.save
        format.html { redirect_to @parkeo, notice: 'Parkeo was successfully created.' }
        format.json { render :show, status: :created, location: @parkeo }
      else
        format.html { render :new }
        format.json { render json: @parkeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkeos/1
  # PATCH/PUT /parkeos/1.json
  def update
    respond_to do |format|
      if @parkeo.update(parkeo_params)
        format.html { redirect_to @parkeo, notice: 'Parkeo was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkeo }
      else
        format.html { render :edit }
        format.json { render json: @parkeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkeos/1
  # DELETE /parkeos/1.json
  def destroy
    @parkeo.destroy
    respond_to do |format|
      format.html { redirect_to parkeos_url, notice: 'Parkeo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkeo
      @parkeo = Parkeo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkeo_params
      params.require(:parkeo).permit(:codigo, :description)
    end
end
