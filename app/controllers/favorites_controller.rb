class FavoritesController < ApplicationController

  def create
    render json: Favorite.create(favorite_params)
  end

  private


  def favorite_params
    params.require(:favorite).permit(:artist_id)
  end
end
