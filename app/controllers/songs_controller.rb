class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit

  end

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

end
