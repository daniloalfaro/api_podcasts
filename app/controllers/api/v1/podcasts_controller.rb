# frozen_string_literal: true

module Api
  module V1
    class PodcastsController < ApplicationController
      def search
        @podcasts = Podcast.search_by_term(params[:query])

        render json: @podcasts
      end
    end
  end
end
