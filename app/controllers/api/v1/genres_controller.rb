# frozen_string_literal: true

module Api
  module V1
    class GenresController < ApplicationController
      def search
        @genres = Genre.search_by_term(params[:query])
        render json: @genres
      end

      def index
        @genres = Genre.all
        render json: @genres
      end

      def podcasts
        @genres_podcasts = Genre.all 
        render json: @genres_podcasts
      end
    end
  end
end
