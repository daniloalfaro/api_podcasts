class PodcastsController < ApplicationController

  def search
    @podcasts = Podcast.search_by_term(params[:query])

    render json: @podcasts
  end

end
