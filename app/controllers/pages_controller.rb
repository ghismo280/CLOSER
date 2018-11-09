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
    @matches = Match.where(to_user: current_user)
  end

  def choose
    @match = Match.new(from_user: current_user, to_user: User.find(params[:num]))
    if @match.save!
      redirect_to matches_path
    end
  end
end
