# frozen_string_literal: true

class Genre < ApplicationRecord
  has_and_belongs_to_many :podcasts

  validates :genre_id, uniqueness: true
end
