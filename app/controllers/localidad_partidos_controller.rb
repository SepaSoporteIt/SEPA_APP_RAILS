class LocalidadPartidosController < ApplicationController
  before_action :set_localidad_partido, only: [:show, :edit, :update, :destroy]

  # GET /localidad_partidos
  # GET /localidad_partidos.json
  def index
    @localidad_partidos = LocalidadPartido.all
  end

  # GET /localidad_partidos/1
  # GET /localidad_partidos/1.json
  def show
  end

  # GET /localidad_partidos/new
  def new
    @localidad_partido = LocalidadPartido.new
  end

  # GET /localidad_partidos/1/edit
  def edit
  end

  # POST /localidad_partidos
  # POST /localidad_partidos.json
  def create
    @localidad_partido = LocalidadPartido.new(localidad_partido_params)

    respond_to do |format|
      if @localidad_partido.save
        format.html { redirect_to @localidad_partido, notice: 'Localidad partido was successfully created.' }
        format.json { render :show, status: :created, location: @localidad_partido }
      else
        format.html { render :new }
        format.json { render json: @localidad_partido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localidad_partidos/1
  # PATCH/PUT /localidad_partidos/1.json
  def update
    respond_to do |format|
      if @localidad_partido.update(localidad_partido_params)
        format.html { redirect_to @localidad_partido, notice: 'Localidad partido was successfully updated.' }
        format.json { render :show, status: :ok, location: @localidad_partido }
      else
        format.html { render :edit }
        format.json { render json: @localidad_partido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localidad_partidos/1
  # DELETE /localidad_partidos/1.json
  def destroy
    @localidad_partido.destroy
    respond_to do |format|
      format.html { redirect_to localidad_partidos_url, notice: 'Localidad partido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localidad_partido
      @localidad_partido = LocalidadPartido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localidad_partido_params
      params.require(:localidad_partido).permit(:partido, :localidad)
    end
end