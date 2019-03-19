# frozen_string_literal: true

class ContestSerializer < ActiveModel::Serializer
  attributes :id, :name, :entrants_total, :entrants_current, :winner

  has_many :users, serializer: UserSerializer
end
