class PollasController < ApplicationController
  before_action :set_polla, only: %i[ show edit update destroy ]

  # GET /pollas or /pollas.json
  def index
    @pollas = Polla.all
  end

  # GET /pollas/1 or /pollas/1.json
  def show
  end

  # GET /pollas/new
  def new
    @polla = Polla.new
  end

  # GET /pollas/1/edit
  def edit
  end

  # POST /pollas or /pollas.json
  def create
    @polla = Polla.new(polla_params)

    respond_to do |format|
      if @polla.save
        format.html { redirect_to polla_url(@polla), notice: "Polla was successfully created." }
        format.json { render :show, status: :created, location: @polla }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @polla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pollas/1 or /pollas/1.json
  def update
    respond_to do |format|
      if @polla.update(polla_params)
        format.html { redirect_to polla_url(@polla), notice: "Polla was successfully updated." }
        format.json { render :show, status: :ok, location: @polla }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @polla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pollas/1 or /pollas/1.json
  def destroy
    @polla.destroy

    respond_to do |format|
      format.html { redirect_to pollas_url, notice: "Polla was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polla
      @polla = Polla.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def polla_params
      params.require(:polla).permit(:name, :description, :exact_goals_points, :winner_points)
    end
end
