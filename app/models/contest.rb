# frozen_string_literal: true

class Contest < ApplicationRecord
  has_many :entries
  has_many :users, through: :entries
  has_many :lineups, through: :entries
end
