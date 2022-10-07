class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render :index
  end

  def show
    @listing = Listing.find(params[:id])
    render :show
  end

  def new
    @listing = Listing.new
    render :new
  end

  def create
    @listing = Listing.new(params.require(:listing).permit(:name, :description, :available))
    if @listing.save
      flash[:success] = 'Listing was successfully created.'
      redirect_to listing_url(@listing)
    else
      flash.now[:error] = 'Unable to create listing.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    render :edit
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(params.require(:listing).permit(:name, :description, :available))
      flash[:success] = 'Listing was successfully updated.'
      redirect_to listing_url(@listing)
    else
      flash.now[:error] = 'Unable to update listing.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:success] = 'Listing was successfully destroyed.'
    redirect_to listings_url
  end
end
