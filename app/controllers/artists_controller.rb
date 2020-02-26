class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def show
        @artist = Artist.all.find(params[:id])
    end

    def edit
        @artist = Artist.all.find(params[:id])
    end

    def update
        @artist = Artist.all.find(params[:id])
        @artist.update(artist_params)
        redirect_to @artist
    end

    private 

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

end
