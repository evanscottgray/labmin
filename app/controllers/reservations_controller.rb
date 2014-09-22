class ReservationsController < ApplicationController

  before_filter :authenticate_user!

  def index
    reservations = Reservation.all
    @page = {:reservations => reservations}
  end

  def new
    user = User.find_by_id(current_user.id)
    reservation = user.reservations.build
    @page = {:reservation => reservation, :user => user}
  end
end
