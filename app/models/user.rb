# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :entries
  has_many :contests, through: :entries
  has_many :lineups, through: :entries
end
