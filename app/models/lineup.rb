class Lineup < ApplicationRecord
  has_many :slates
  has_many :contests, through: :slates
  has_many :users, through: :slates
end
