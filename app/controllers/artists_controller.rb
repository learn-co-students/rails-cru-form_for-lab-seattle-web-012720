class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new
        @artist.name = params['artist']['name']
        @artist.bio = params['artist']['bio']
        @artist.save
        redirect_to @artist
    end
    
    def show
        @artist = Artist.find_by_id(params[:id])
    end

    def edit
        @artist = Artist.find_by_id(params[:id])
    end

    def update
    end

end
