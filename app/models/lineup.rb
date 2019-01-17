# frozen_string_literal: true

class Lineup < ApplicationRecord
  has_many :entries
  has_many :contests, through: :entries
  has_many :users, through: :entriest
end
