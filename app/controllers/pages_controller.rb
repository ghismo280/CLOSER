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
    @user = current_user if current_user
  end

  def matches
    @matches = Match.all
  end

  def choose
    @match = Match.new(from_user: current_user, to_user: User.find(params[:num]))
    if @match.save!
      redirect_to pages_index_path
    end
  end
end
