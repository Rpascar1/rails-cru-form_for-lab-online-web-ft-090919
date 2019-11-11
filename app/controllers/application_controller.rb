class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit!
  end

  def song_params
    params.require(:song).permit!
  end

  def genre_params
    params.require(:genre).permit!
  end

end
