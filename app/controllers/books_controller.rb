class BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def show
        id = params[:id]
        @book = Book.find(id)
        render json: @book
    end

    def create
        @book = Book.create(book_params)
        render json: @book
    end

    def update
        id = params[:id]
        @book = Book.find(id)
        @book.update(book_params)
        render json: @book
    end

    def destroy
        id = params[:id]
        @book = Book.find(id)
        @book.destroy
        render json: @book
    end

    private

    def book_params
        params.permit(:title, :author, :pages)
    end

end
