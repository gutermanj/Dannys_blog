class PhotosController < ApplicationController
  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to root_path
    else
      render @photos
    end
  end

  def destroy
  @photos = Photo.find(params[:id])
  @photos.destroy
  redirect_to :action => 'index'
end

  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end