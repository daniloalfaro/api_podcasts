# frozen_string_literal: true

class Podcast < ApplicationRecord
  has_and_belongs_to_many :genres

  validates :itunes_id, uniqueness: true
end
