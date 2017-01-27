class SearchController < ApplicationController
  def index
    results = SpotifyServices::Search.new(params).process
    render json: results, each_serializer: SearchSerializer
  end
end
