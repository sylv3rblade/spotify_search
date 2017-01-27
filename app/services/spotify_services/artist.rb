module SpotifyServices
  class Artist
    SEARCH_URL = 'https://api.spotify.com/v1/artists'
    def self.get(id)
      HTTParty.get("#{SEARCH_URL}/#{id}")
    end
  end
end