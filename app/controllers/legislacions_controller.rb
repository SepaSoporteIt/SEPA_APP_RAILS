class LegislacionsController < ApplicationController
  before_action :set_legislacion, only: [:show, :edit, :update, :destroy]

  # GET /legislacions
  # GET /legislacions.json
  def index
    @legislacions = Legislacion.all
  end

  # GET /legislacions/1
  # GET /legislacions/1.json
  def show
  end

  # GET /legislacions/new
  def new
    @legislacion = Legislacion.new
  end

  # GET /legislacions/1/edit
  def edit
  end

  # POST /legislacions
  # POST /legislacions.json
  def create
    @legislacion = Legislacion.new(legislacion_params)

    respond_to do |format|
      if @legislacion.save
        format.html { redirect_to @legislacion, notice: 'Legislacion creada con exito.' }
        format.json { render :show, status: :created, location: @legislacion }
      else
        format.html { render :new }
        format.json { render json: @legislacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislacions/1
  # PATCH/PUT /legislacions/1.json
  def update
    respond_to do |format|
      if @legislacion.update(legislacion_params)
        format.html { redirect_to @legislacion, notice: 'Legislacion actualizada con exito.' }
        format.json { render :show, status: :ok, location: @legislacion }
      else
        format.html { render :edit }
        format.json { render json: @legislacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislacions/1
  # DELETE /legislacions/1.json
  def destroy
    @legislacion.destroy
    respond_to do |format|
      format.html { redirect_to legislacions_url, notice: 'Legislacion destruida con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislacion
      @legislacion = Legislacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislacion_params
      params.require(:legislacion).permit(:name)
    end
end
