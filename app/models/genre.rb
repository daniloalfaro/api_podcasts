# frozen_string_literal: true

class Genre < ApplicationRecord
  has_and_belongs_to_many :podcasts

  validates :genre_id, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_term, against: %i[name url],
                                   using: {
                                     tsearch: {
                                       any_word: true,
                                       prefix: true
                                     }
                                   }
end
