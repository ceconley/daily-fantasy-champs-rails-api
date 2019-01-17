# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :lineups, serializer: LineupSerializer
  has_many :contests, serializer: ContestSerializer
end
