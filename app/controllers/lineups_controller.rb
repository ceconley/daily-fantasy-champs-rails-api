# frozen_string_literal: true

class LineupsController < OpenReadController
  before_action :set_lineup, only: %i[show]
  before_action :set_lineup_own, only: %i[create update destroy index]

  # GET /lineups
  def index
    @lineups = Lineup.all

    render json: @lineups
  end

  # GET /lineups/1
  def show
    render json: @lineup
  end

  # POST /lineups
  def create
    @lineup = Lineup.new(lineup_params)

    if @lineup.save
      render json: @lineup, status: :created, location: @lineup
    else
      render json: @lineup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lineups/1
  def update
    if @lineup.update(lineup_params)
      render json: @lineup
    else
      render json: @lineup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lineups/1
  def destroy
    @lineup.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contest
    @lineup = Lineup.find(params[:id])
  end

  def set_lineup_own
    @lineup = current_user.lineups.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def lineup_params
    params.require(:lineup).permit(:qb, :rb1, :rb2, :wr1, :wr2, :wr3, :te, :flex, :dst, :score)
  end
end
