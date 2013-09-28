class ArtistsController < ApplicationController
  before_filter :is_logged_in?, 
    only: [:new, :create, :edit, :update, :destroy]
    
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to @artist
  end
  
  def show
    @artist = find_artist
  end
  
  def edit
    @artist = find_artist
  end
  
  def update
    @artist = find_artist
    @artist.update_attributes(artist_params)
    redirect_to @artist
  end
  
  def destroy
    @artist = find_artist
    @artist.destroy
    redirect_to dashboard_path
  end
  
  private
  
  def find_artist
    Artist.find(params[:id])
  end
  
  def artist_params
    params.require(:artist).permit(:name, :bio, :profile_picture, :youtube_token)
  end
end