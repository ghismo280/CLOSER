class ProfilesController < ApplicationController

def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
  @m = Match.where(from_user: User.find(params[:id]), to_user: current_user).first
end

def invite

end

end
