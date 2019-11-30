class IndustryTypesController < ApplicationController
  before_action :set_industry_type, only: [:show, :edit, :update, :destroy]

  # GET /industry_types
  # GET /industry_types.json
  def index
    @industry_types = IndustryType.all.order('ciiu ASC') 
  end




  # GET /industry_types/1
  # GET /industry_types/1.json
  def show
  end

  # GET /industry_types/new
  def new
    @industry_type = IndustryType.new
  end

  # GET /industry_types/1/edit
  def edit
  end

  # POST /industry_types
  # POST /industry_types.json
  def create
    @industry_type = IndustryType.new(industry_type_params)

    respond_to do |format|
      if @industry_type.save
        format.html { redirect_to @industry_type, notice: 'Industria creada con exito' }
        format.json { render :show, status: :created, location: @industry_type }
      else
        format.html { render :new }
        format.json { render json: @industry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industry_types/1
  # PATCH/PUT /industry_types/1.json
  def update
    respond_to do |format|
      if @industry_type.update(industry_type_params)
        format.html { redirect_to @industry_type, notice: 'Industria actualizada con exito' }
        format.json { render :show, status: :ok, location: @industry_type }
      else
        format.html { render :edit }
        format.json { render json: @industry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_types/1
  # DELETE /industry_types/1.json
  def destroy
    @industry_type.destroy
    respond_to do |format|
      format.html { redirect_to industry_types_url, notice: 'Industria eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industry_type
      @industry_type = IndustryType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industry_type_params
      params.require(:industry_type).permit(:name, :ciiu)
    end
end
