# frozen_string_literal: true

class Podcast < ApplicationRecord
  has_and_belongs_to_many :genres

  validates :itunes_id, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_term, against: %i[artist_name name kind
                                               copyright artist_url url],
                                   using: {
                                     tsearch: {
                                       any_word: true,
                                       prefix: true
                                     }
                                   }
end
