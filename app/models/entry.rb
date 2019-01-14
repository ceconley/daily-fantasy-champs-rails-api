class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :lineup
  belongs_to :contest
end
