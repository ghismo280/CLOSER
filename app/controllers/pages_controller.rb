class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def index
   @users = User.all
  end

  def show

  end

  def profile
    @user = User.find(params[:id])
  end

  def matches
    @matches_from_logged = Match.where(from_user: current_user)
    @matches_to_logged = Match.where(to_user: current_user)
  end

  def choose
    @match = Match.new(from_user: current_user, to_user: User.find(params[:num]))
    if @match.save!
      redirect_to matches_path
    end
  end

  def accept
    mat = Match.where(from_user: current_user, to_user: User.find(params[:id])).first
    mat.status = 'accepted'
      if mat.save!
      redirect_to "/"
    end
  end

  def decline
    mat = Match.where(from_user: current_user, to_user: User.find(params[:id])).first
    mat.destroy
    redirect_to "/matches"
  end
end
