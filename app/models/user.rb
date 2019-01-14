# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :slates
  has_many :contests, through: :slates
  has_many :lineups, through: :slates
end
