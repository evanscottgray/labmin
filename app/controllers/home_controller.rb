class HomeController < ApplicationController
  def index
    redirect_to reservations_path
  end
end
