class AmbitosController < ApplicationController
  before_action :set_ambito, only: [:show, :edit, :update, :destroy]

  # GET /ambitos
  # GET /ambitos.json
  def index
    @ambitos = Ambito.all
  end

  # GET /ambitos/1
  # GET /ambitos/1.json
  def show
  end

  # GET /ambitos/new
  def new
    @ambito = Ambito.new
  end

  # GET /ambitos/1/edit
  def edit
  end

  # POST /ambitos
  # POST /ambitos.json
  def create
    @ambito = Ambito.new(ambito_params)

    respond_to do |format|
      if @ambito.save
        format.html { redirect_to @ambito, notice: 'Ambito was successfully created.' }
        format.json { render :show, status: :created, location: @ambito }
      else
        format.html { render :new }
        format.json { render json: @ambito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambitos/1
  # PATCH/PUT /ambitos/1.json
  def update
    respond_to do |format|
      if @ambito.update(ambito_params)
        format.html { redirect_to @ambito, notice: 'Ambito was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambito }
      else
        format.html { render :edit }
        format.json { render json: @ambito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambitos/1
  # DELETE /ambitos/1.json
  def destroy
    @ambito.destroy
    respond_to do |format|
      format.html { redirect_to ambitos_url, notice: 'Ambito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambito
      @ambito = Ambito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambito_params
      params.require(:ambito).permit(:name)
    end
end
