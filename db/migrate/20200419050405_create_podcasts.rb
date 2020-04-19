# frozen_string_literal: true

class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.text :artist_name
      t.integer :itunes_id
      t.date :release_date
      t.string :name
      t.string :kind
      t.text :copyright
      t.integer :artist_id
      t.text :artist_url
      t.text :artwork_url100
      t.text :url
      t.timestamps
    end
  end
end
