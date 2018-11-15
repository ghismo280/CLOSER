class MatchesController < ApplicationController

  def index
    @match_icon = true
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
    @m = Match.where(from_user: User.find(params[:match][:from_user_number]), to_user: current_user).first
    @m.status = params[:status] if params[:status]

    unless @m.nil?
      @m.save!
      redirect_to matches_path
    end

    @match_sent = Match.where(to_user: User.find(params[:match][:from_user_number]), from_user: current_user).first
    @match_sent.photo = params[:match][:photo] if params[:match][:photo]
    @match_sent.instructions = params[:match][:instructions] if params[:match][:instructions]

    unless @match_sent.nil?
      @match_sent.save!
      redirect_to profile_path(@match_sent.from_user_id)
    end

  end

  def match_params
    params.require(:match).permit(:status, :photo, :instructions)
  end
end
