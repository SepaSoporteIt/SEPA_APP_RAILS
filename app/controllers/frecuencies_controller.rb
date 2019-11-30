class FrecuenciesController < ApplicationController
  before_action :set_frecuency, only: [:show, :edit, :update, :destroy]

  # GET /frecuencies
  # GET /frecuencies.json
  def index
    @frecuencies = Frecuency.all
  end

  # GET /frecuencies/1
  # GET /frecuencies/1.json
  def show
  end

  # GET /frecuencies/new
  def new
    @frecuency = Frecuency.new
  end

  # GET /frecuencies/1/edit
  def edit
  end

  # POST /frecuencies
  # POST /frecuencies.json
  def create
    @frecuency = Frecuency.new(frecuency_params)

    respond_to do |format|
      if @frecuency.save
        format.html { redirect_to @frecuency, notice: 'Frecuencia creada con exito' }
        format.json { render :show, status: :created, location: @frecuency }
      else
        format.html { render :new }
        format.json { render json: @frecuency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frecuencies/1
  # PATCH/PUT /frecuencies/1.json
  def update
    respond_to do |format|
      if @frecuency.update(frecuency_params)
        format.html { redirect_to @frecuency, notice: 'Frecuencia actualizada con exito' }
        format.json { render :show, status: :ok, location: @frecuency }
      else
        format.html { render :edit }
        format.json { render json: @frecuency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frecuencies/1
  # DELETE /frecuencies/1.json
  def destroy
    @frecuency.destroy
    respond_to do |format|
      format.html { redirect_to frecuencies_url, notice: 'Frecuencia eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frecuency
      @frecuency = Frecuency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frecuency_params
      params.require(:frecuency).permit(:name, :days)
    end
end
