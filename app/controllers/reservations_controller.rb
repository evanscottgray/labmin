class ReservationsController < ApplicationController
  def new
    user = User.find_by_id(current_user.id)
    reservation = user.reservations.build
    @page = {:reservation => reservation, :user => user}
  end
end
