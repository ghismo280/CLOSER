class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :first, :second]

  def home
  end

  def first
  end

  def second
  end

end
