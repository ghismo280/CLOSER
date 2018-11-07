class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @disable_nav = true
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

end
