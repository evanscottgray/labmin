class UserHomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    reservations = Reservation.all
    @page = {:reservations => reservations}
  end

  def topologies
    topologies = Topology.all
    @page ={:topologies => topologies}
    render 'user_home/topologies/index'
  end
end
