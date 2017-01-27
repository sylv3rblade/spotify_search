class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :artist_id
      t.timestamps
    end
  end
end
