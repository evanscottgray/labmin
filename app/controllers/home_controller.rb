class HomeController < ApplicationController
  def index
    redirect_to user_home_path
  end
end
