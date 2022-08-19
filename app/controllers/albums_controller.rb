class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:title)
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist))
    if @album.save
      flash['success'] = 'Album was successfully created.'
      redirect_to albums_url
    else
      flash.now['error'] = 'Error! Unable to create album.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:title, :artist))
      flash['success'] = 'Album was successfully updated.'
      redirect_to album_url(@album)
    else
      flash.now['error'] = 'Error! Unable to update album.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    flash['success'] = 'Album was successfully destroyed.'
    redirect_to albums_url
  end
end
