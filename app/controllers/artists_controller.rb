class ArtistsController < ApplicationController

before_action :set_artist, only: [:show, :edit, :update]

  def show

  end

  def edit

  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

end
