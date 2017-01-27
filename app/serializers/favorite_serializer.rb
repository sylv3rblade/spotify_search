class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :artist

  def artist
    SearchSerializer.new(SpotifyServices::Artist.get(object.artist_id))
  end
end
