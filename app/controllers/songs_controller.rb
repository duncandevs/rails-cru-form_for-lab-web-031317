class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end
  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end
  def edit
    @song = Song.find(params[:id])
  end
  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end
end
