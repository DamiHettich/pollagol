class MatchesController < ApplicationController
  before_action :set_match, only: %i[ show edit update destroy ]

  # GET /matches or /matches.json
  def index
    @matches = Match.where("start_time <= ?", DateTime.now + 14).reversed
    @bets = Bet.all
    @polla = Polla.find(1)
  end

  # GET /matches/1 or /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
    @all_teams = Team.all
    @enums = Match.status_enums
  end

  # GET /matches/1/edit
  def edit
    @all_teams = Team.all
    @enums = Match.status_enums
  end

  # POST /matches or /matches.json
  def create
    @all_teams = Team.all
    @enums = Match.status_enums
    @match = Match.new(match_params)
    
    respond_to do |format|
      if @match.save
        format.html { redirect_to matches_path, notice: "Match was successfully created." }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1 or /matches/1.json
  def update
    @all_teams = Team.all
    @enums = Match.status_enums
    
    respond_to do |format|
      if @match.update(match_params)
        @match.bets.each { |list| list.update_attribute(:points, list.calculate_score) }
        format.html { redirect_to matches_path, notice: "Match was successfully updated." }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1 or /matches/1.json
  def destroy
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url, notice: "Match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def match_params
      params.require(:match).permit(:home_id, :vis_id, :home_goals, :vis_goals, :start_time, :status_enum, :polla_id)
    end
end
