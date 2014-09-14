class UserHomeController < ApplicationController
  before_filter :authenticate_user!
end
