class ReservesController < ApplicationController
  def index
    @reserves = Reserve.all
  end
end
