module SpotifyServices
  class Search
    SEARCH_URL = 'https://api.spotify.com/v1/search'
    def initialize(params)
      @limit = params[:limit] || 50
      @type = 'artist'
      @query = params[:query]
    end

    def process
      result = HTTParty.get("#{SEARCH_URL}/?#{query_string}")
      result['artists']['items']
    end

    private

    def query_attrs
      {
        q: @query,
        limit: @limit,
        type: @type,
      }
    end

    def query_string
      query_attrs.to_query
    end
  end
end