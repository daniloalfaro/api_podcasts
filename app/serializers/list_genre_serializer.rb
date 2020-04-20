# frozen_string_literal: true

class ListGenreSerializer < ActiveModel::Serializer
  attributes :genre_id, :name, :url
end
