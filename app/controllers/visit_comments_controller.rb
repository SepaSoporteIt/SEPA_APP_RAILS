class VisitCommentsController < ApplicationController
  before_action :set_visit_comment, only: [:show, :edit, :update, :destroy]

  # GET /visit_comments
  # GET /visit_comments.json
  def index
    @visit_comments = VisitComment.all
  end

  # GET /visit_comments/1
  # GET /visit_comments/1.json
  def show
  end

  # GET /visit_comments/new
  def new
    @visit_comment = VisitComment.new
    @visit_comment.visit_id = params[:format]
  end
 
  # GET /visit_comments/1/edit
  def edit
  end

  # POST /visit_comments
  # POST /visit_comments.json
  def create
    @visit_comment = VisitComment.new(visit_comment_params)

    respond_to do |format|
      if @visit_comment.save
        @visit = Visit.find(@visit_comment.visit_id)
        format.html { redirect_to @visit , notice: 'Comentario creado con exito' }
        format.json { render :show, status: :created, location: @visit_comment }
      else
        format.html { render :new }
        format.json { render json: @visit_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_comments/1
  # PATCH/PUT /visit_comments/1.json
  def update
    respond_to do |format|
      if @visit_comment.update(visit_comment_params)
         @visit = Visit.find(@visit_comment.visit_id)
        format.html { redirect_to @visit , notice: 'Comentario actualizado con exito' }
        format.json { render :show, status: :ok, location: @visit_comment }
      else
        format.html { render :edit }
        format.json { render json: @visit_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_comments/1
  # DELETE /visit_comments/1.json
  def destroy
    @visit_comment.destroy
    respond_to do |format|
      format.html { redirect_to visit_comments_url, notice: 'Comentario eliminado con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_comment
      @visit_comment = VisitComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_comment_params
      params.require(:visit_comment).permit(:note, :visit_id)
    end
end
