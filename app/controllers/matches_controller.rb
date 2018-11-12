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

  def accept
    m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
    m.status = 'accepted'
    id_user = params[:id].to_i
      if m.save!
      redirect_to "/profiles/#{id_user}"
    end
  end

  def decline
    m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
    m.status = 'declined'
    redirect_to "/matches"
  end
end
