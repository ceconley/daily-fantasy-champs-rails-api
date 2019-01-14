class Contest < ApplicationRecord
has_many :slates
has_many :users, through: :slates
has_many :lineups, through: :slates
end
