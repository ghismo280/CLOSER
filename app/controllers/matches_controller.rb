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
    m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
    m.status = params[:status]
    m.save!
    if m.accepted?
      redirect_to profile_path(m.from_user_id)
    else
      redirect_to matches_path
    end
  end
end
