class ExpirationsController < ApplicationController
  before_action :set_expiration, only: [:show, :edit, :update, :destroy, :copy]

  # GET /expirations
  # GET /expirations.json
  
  def index
  @expirations = Expiration.search(params[:search])
  @expirations = @expirations.where(status: params[:status]) if params[:status] && %w[vencido vigente].include?(params[:status])
  @expirations
 
  end

  # GET /expirations/1
  # GET /expirations/1.json
  def show
  end
      
  def copy
  @expirations = Expiration.find(params[:id])
  #create new object with attributes of existing record 
  @expiration = Expiration.new(@expirations.attributes) 
  render "new"
  end

  # GET /expirations/new
  def new
    @expiration = Expiration.new
  end

  # GET /expirations/1/edit
  def edit
  end

  # POST /expirations
  # POST /expirations.json
  def create
    @expiration = Expiration.new(expiration_params)

    respond_to do |format|
      if params[:seguir]
        @expiration.save
        format.html { redirect_to new_expiration_path , notice: 'VENCIMIENTO GUARDADO CON EXITO'}
      elsif params[:guardar]
        @expiration.save
        format.html { redirect_to @expiration, notice: 'Vencimiento creado con exito.' }
        format.json { render :show, status: :created, location: @expiration }
      else
        format.html { render :new, notice: 'error'}
        format.json { render json: @expiration.errors, status: :unprocessable_entity }
      end

      end
    end

  # PATCH/PUT /expirations/1
  # PATCH/PUT /expirations/1.json
  def update
    respond_to do |format|
      if @expiration.update(expiration_params)
        format.html { redirect_to @expiration, notice: 'Vencimiento actualizado con exito.' }
        format.json { render :show, status: :ok, location: @expiration }
      else
        format.html { render :edit }
        format.json { render json: @expiration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expirations/1
  # DELETE /expirations/1.json
  def destroy
    @expiration.destroy
    respond_to do |format|
    if params[:from]=='prof'
      format.html { redirect_to employees_url, notice: 'Vencimiento eliminado con exito.' }
    elsif params[:from]=='comp'
      format.html { redirect_to companies_url, notice: 'Vencimiento eliminado con exito no prof.' }
    else
      format.html { redirect_to expirations_url, notice: 'Vencimiento eliminado con exito no prof.' }      
    end
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expiration
      @expiration = Expiration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expiration_params
      params.require(:expiration).permit(:companyId, :employeeId, :studyId, :start_date, :end_date, :status, :comments, :search, :codigounico)
    end
end
