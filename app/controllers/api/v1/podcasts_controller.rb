# frozen_string_literal: true

module Api
  module V1
    class PodcastsController < ApplicationController
      before_action :podcast?, only: %i[destroy]

      def search
        @podcasts = Podcast.search_by_term(params[:query])
        render json: @podcasts
      end

      def index
        @podcasts = Podcast.all
        render json: @podcasts
      end

      def top20
        @podcasts = Podcast.limit(20)
        render json: @podcasts
      end

      def last20
        @podcasts = Podcast.reorder('id DESC').limit(20)
        render json: @podcasts
      end

      def destroy
        return (render status: 404) unless @podcast

        render status: 200 if @podcast.destroy
      end

      private

      def podcast?
        @podcast = Podcast.exists?(itunes_id: params[:id]) ? Podcast.find_by_itunes_id(params[:id]) : nil
      end
    end
  end
end
