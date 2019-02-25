class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @chart.songs.all
  end

  def show
  end
  
  def new
    # @chart = Chart.find(params[:chart_id])
    @song = Song.new()
    # if @song.save
    #   redirect_to chart_songs_path
    # else
    #   redirect_to chart_songs_path
    # end
  end

  def create
    @chart = Chart.find(params[:chart_id])
    @song = @chart.songs.new(song_params)
    if @song.save
      redirect_to chart_songs_path
    else
      redirect_to chart_songs_path
    end
  end

  def destroy
    @song.destroy
    redirect_to chart_songs_path
  end

  def update
    if @song.update(song_params)
      redirect_to @song
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end


  private
  def set_song
    @song = Song.find(params[:id])
  end
  
    def song_params
      params.require(:song).permit(:title, :album)
    end
end

