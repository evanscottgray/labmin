class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    @page = {:reservations => reservations}
  end

  def new
    user = User.find_by_id(current_user.id)
    topologies = Topology.all
    reservation = user.reservations.build
    @page = {:reservation => reservation, :user => user, :topologies => topologies}
  end
end
