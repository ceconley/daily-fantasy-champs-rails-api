class LineupSerializer < ActiveModel::Serializer
  attributes :id, :qb, :rb1, :rb2, :wr1, :wr2, :wr3, :te, :flex, :dst, :score
end
