# frozen_string_literal: true

class PodcastSerializer < ActiveModel::Serializer
  attributes  :artist_name, :itunes_id, :release_date, :name, :kind, :copyright,
              :artist_id, :artwork_url100, :url
end
