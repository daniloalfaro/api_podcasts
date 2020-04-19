class CreateJoinTableGenresPodcasts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :genres, :podcasts do |t|
      # t.index [:genre_id, :podcast_id]
      # t.index [:podcast_id, :genre_id]
    end
  end
end
