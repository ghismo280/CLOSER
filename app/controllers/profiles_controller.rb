class ProfilesController < ApplicationController

def index
  users_like_me = User.like_me(current_user)
  @users = User.near_me(users_like_me, current_user)
end

def show
  @user = User.find(params[:id])
  @m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
end

def invite

end

end
