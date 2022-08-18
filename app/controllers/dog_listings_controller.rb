class DogListingsController < ApplicationController
  before_action :set_dog_listing, only: %i[ show edit update destroy ]

  # GET /dog_listings or /dog_listings.json
  def index
    @dog_listings = DogListing.all
  end

  # GET /dog_listings/1 or /dog_listings/1.json
  def show
  end

  # GET /dog_listings/new
  def new
    @dog_listing = DogListing.new
  end

  # GET /dog_listings/1/edit
  def edit
  end

  # POST /dog_listings or /dog_listings.json
  def create
    @dog_listing = DogListing.new(dog_listing_params)

    respond_to do |format|
      if @dog_listing.save
        format.html { redirect_to dog_listing_url(@dog_listing), notice: "Dog listing was successfully created." }
        format.json { render :show, status: :created, location: @dog_listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_listings/1 or /dog_listings/1.json
  def update
    respond_to do |format|
      if @dog_listing.update(dog_listing_params)
        format.html { redirect_to dog_listing_url(@dog_listing), notice: "Dog listing was successfully updated." }
        format.json { render :show, status: :ok, location: @dog_listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_listings/1 or /dog_listings/1.json
  def destroy
    @dog_listing.destroy

    respond_to do |format|
      format.html { redirect_to dog_listings_url, notice: "Dog listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_listing
      @dog_listing = DogListing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_listing_params
      params.require(:dog_listing).permit(:name, :breed, :sex, :weight, :price, :seller_email)
    end
end
