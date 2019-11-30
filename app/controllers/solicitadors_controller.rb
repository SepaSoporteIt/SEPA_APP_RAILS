class SolicitadorsController < ApplicationController
  before_action :set_solicitador, only: [:show, :edit, :update, :destroy]

  # GET /solicitadors
  # GET /solicitadors.json
  def index
    @solicitadors = Solicitador.all
  end

  # GET /solicitadors/1
  # GET /solicitadors/1.json
  def show
  end

  # GET /solicitadors/new
  def new
    @solicitador = Solicitador.new
  end

  # GET /solicitadors/1/edit
  def edit
  end

  # POST /solicitadors
  # POST /solicitadors.json
  def create
    @solicitador = Solicitador.new(solicitador_params)

    respond_to do |format|
      if @solicitador.save
        format.html { redirect_to @solicitador, notice: 'Solicitador was successfully created.' }
        format.json { render :show, status: :created, location: @solicitador }
      else
        format.html { render :new }
        format.json { render json: @solicitador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitadors/1
  # PATCH/PUT /solicitadors/1.json
  def update
    respond_to do |format|
      if @solicitador.update(solicitador_params)
        format.html { redirect_to @solicitador, notice: 'Solicitador was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitador }
      else
        format.html { render :edit }
        format.json { render json: @solicitador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitadors/1
  # DELETE /solicitadors/1.json
  def destroy
    @solicitador.destroy
    respond_to do |format|
      format.html { redirect_to solicitadors_url, notice: 'Solicitador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitador
      @solicitador = Solicitador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitador_params
      params.require(:solicitador).permit(:name)
    end
end
