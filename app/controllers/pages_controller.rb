class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def show
  end

  def profile
    @user = current_user if current_user
  end
end
