class TracksController < ApplicationController
  def index
    @tracks = Track.order(:order_number)
    render :index
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end
end
