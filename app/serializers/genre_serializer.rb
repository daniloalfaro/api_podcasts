# frozen_string_literal: true

class GenreSerializer < ActiveModel::Serializer
  attributes :genre_id, :name, :url, :podcasts

end
