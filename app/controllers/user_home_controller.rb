class UserHomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    user = User.find_by_id(current_user.id)
    reservations = Reservation.all
    @page = {:user => user, :reservations => reservations}
  end
end
