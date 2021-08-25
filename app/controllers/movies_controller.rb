class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
        render json: @movies
    end

    def show
        id = params[:id]
        @movie = Movie.find(id)
        render json: @movie
    end

    def create
        @movie = Movie.create(movie_params)
        render json: @movie
    end

    def update
        id = params[:id]
        @movie = Movie.find(id)
        @movie.update(movie_params)
        render json: @movie
    end

    def destroy
        id = params[:id]
        @movie = Movie.find(id)
        @movie.destroy
        render json: {message: "Movie destroyed successfully"}
    end

    private

    def movie_params
        params.permit(:name, :genre, :director)
    end

end