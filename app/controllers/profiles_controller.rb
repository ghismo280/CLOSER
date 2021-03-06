class ProfilesController < ApplicationController

  def index
    if params[:latitude] and params[:longitude]
      current_user.update(latitude: params[:latitude], longitude: params[:longitude])
    end

    users_like_me = User.like_me(current_user)
    @users = User.near_me(users_like_me, current_user)
  end

  def show
    @profile_icon = true
    @user = User.find(params[:id])
    @m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
    @match_sent = Match.where(from_user: current_user, to_user: User.find(params[:id])).first
  end

end
