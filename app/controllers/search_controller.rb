class SearchController < ApplicationController
  def index
    render json: SpotifyServices::Search.new(params).process
  end
end
