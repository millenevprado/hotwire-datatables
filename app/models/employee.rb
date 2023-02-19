class Employee < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: %i[name position office age start_date], using: { tsearch: { prefix: true } }
end
