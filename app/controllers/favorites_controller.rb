class FavoritesController < ApplicationController

  def create
    render json: Favorite.create(favorite_params), serializer: FavoriteSerializer
  end

  def show
    render json: Favorite.find(1), serializer: FavoriteSerializer
  end

  private


  def favorite_params
    params.require(:favorite).permit(:artist_id)
  end
end
