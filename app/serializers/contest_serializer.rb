class ContestSerializer < ActiveModel::Serializer
  attributes :id, :name, :entrants_total, :entrants_current, :winner
end
