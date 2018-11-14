class MatchesController < ApplicationController

  def index
    @matches_from_logged = Match.where(from_user: current_user)
    @matches_to_logged = Match.where(to_user: current_user)
  end

  def create
   @match = Match.new(from_user: current_user, to_user: User.find(params[:num]))
    if @match.save!
      redirect_to matches_path
    end
  end

  def update
    @m = Match.where(to_user: User.find(params[:match][:from_user_number]), from_user: current_user).first
    @m.status = params[:status] if params[:status]
    @m.photo = params[:match][:photo] if params[:match][:photo]
    @m.instructions = params[:match][:instructions] if params[:match][:instructions]
    @m.save!
    if @m.accepted?
      redirect_to profile_path(@m.from_user_id)
    else
      redirect_to matches_path
    end
  end

  def match_params
    params.require(:match).permit(:status, :photo, :instructions)
  end
end
