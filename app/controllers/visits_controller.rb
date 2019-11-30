class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  # GET /visits
  # GET /visits.json
  def index
    @visits = Visit.all
  end

  # GET /visits/soon
  # GET /visits/soon.json
  def soon
    @visits = Visit.where("visitDate <= ? and aprovalDate is null", Date.today + 90.day)
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
    @visit = Visit.find(params[:id])
    #VisitSoonNotificationMailer.sample_email(@visit).deliver
    #VisitSoonNotificationMailer.sample_email(Visit.first).deliver
  end

  # GET /visits/new
  def new
    @visit = Visit.new
  end

  # GET /visits/1/edit
  def edit
  end

  # POST /visits
  # POST /visits.json
  def create
    @visit = Visit.new(visit_params)

    respond_to do |format|
      if @visit.save
        #format.html { redirect_to @visit.company, notice: 'Visita creada con exito' }
        format.html { render :show }
        format.json { render :show, status: :created, location: @visit }
      else
        format.html { render :new }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        #format.html { redirect_to @visit.company, notice: 'Visita actualizada con exito' }
        format.html { render :show }
        format.json { render :show, status: :ok, location: @visit }
      else
        format.html { render :edit }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url, notice: 'Visita eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_params
      params.require(:visit).permit(:order_id, :companyId, :visitTypeId, :frecuencyTypeId, :employeeId, :nextVisit, :budget_sent_date, :aproval_budget_date, :visitDate, :external_id, :aproved, :aprovalDate, :document_attributes=> [:id, :visitId, :name, :images, :_destroy, :_update, :_save, :_create])
    end
end
