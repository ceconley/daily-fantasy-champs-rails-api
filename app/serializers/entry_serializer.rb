# frozen_string_literal: true

class EntrySerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :lineup
  has_one :contest
end
