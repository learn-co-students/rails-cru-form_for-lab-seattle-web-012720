class GenresController < ApplicationController

    def show
        @genre = Genre.find_by_id(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.name = params['genre']['name']
        @genre.save
        redirect_to @genre
    end

    def edit
        @genre = Genre.find_by_id(params[:id])
    end

    def update
        @genre = Genre.find_by_id(params[:id])
        @genre.update(name: params['genre']['name'])
        redirect_to @genre
    end

end
