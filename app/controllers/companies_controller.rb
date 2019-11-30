class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json

def index
  @companies = Company.search(params[:search])
  @companies = @companies.where(suscription: params[:suscription]) if params[:suscription] && %w[0 1].include?(params[:suscription])
  @companies
end


  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
    respond_to do |format|
      if @company.save
        @company.visit.each do |visit|
          @visit = Visit.new(visit.attributes)
          @visit.companyId=@company.id
          daysFromNow = Frecuency.find(visit.frecuencyTypeId).days
          nextVisitDate = visit.visitDate + daysFromNow.day
          while nextVisitDate < (Date.today + 365.day)
            @nextVisit = Visit.new(visit.attributes)
            @nextVisit.visitDate = nextVisitDate
            @nextVisit.id = nil
            @nextVisit.companyId=@company.id
            @nextVisit.save
            nextVisitDate = nextVisitDate + daysFromNow.day
          end
        end
        if @company.save
        @company.expiration.each do |expiration|
          @expiration = Expiration.new(expiration.attributes)
          @expiration.companyId=@company.id
        end
      end
        format.html { redirect_to @company, notice: 'Cliente creado con exito' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Cliente actualizado con exito' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Cliente eliminado con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:id, :industryTypeId, :industryTypeId2, :employeeId, :name, :email, :localidad, :partido, :addressDirection, :addressNumber, :cuit, :comment, :suscription, :fantasy_name, :postal_code, :companyType, :tlf, :cellphone, :internal_tlf, :contact, :floor, :departament, :search, :visitqty_min, :visitqty_max, :visit_attributes => [:id, :companyId, :visitTypeId, :frecuencyTypeId, :employeeId, :nextVisit, :visitDate, :aproved, :aprovalDate, :_destroy, :_update, :_save, :_create] )
    end
end