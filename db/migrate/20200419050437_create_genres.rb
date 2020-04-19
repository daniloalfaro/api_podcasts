# frozen_string_literal: true

class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.integer :genre_id
      t.string :name
      t.text :url
      t.timestamps
    end
  end
end
