# frozen_string_literal: true

class ContestsController < OpenReadController
  before_action :set_contest, only: %i[show]
  before_action :set_contest_own, only: %i[index_own update]

  # GET /contests all
  def index
    @contests = Contest.all

    render json: @contests
  end

  # GET /contests own
  def index_own
    @contests = Contest.all

    render json: @contests
  end

  # GET /contests/1
  def show
    render json: @contest
  end

  # POST /contests
  # def create
  #   @contest = Contest.new(contest_params)

  #   if @contest.save
  #     render json: @contest, status: :created, location: @contest
  #   else
  #     render json: @contest.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /contests/1
  def update
    if @contest.update(contest_params)
      render json: @contest
    else
      render json: @contest.errors, status: :unprocessable_entity
    end
  end 

  # # DELETE /contests/1
  # def destroy
  #   @contest.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contest
    @contest = Contest.find(params[:id])
  end

  def set_contest_own
    @contest = current_user.contests.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def contest_params
    params.require(:contest).permit(:name, :entrants_total, :entrants_current, :number, :winner,)
  end
end
