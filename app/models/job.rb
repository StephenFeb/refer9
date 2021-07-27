class Job < ApplicationRecord
    belongs_to :user

    include PgSearch::Model
        pg_search_scope :search_by_job_title_and_location,
        against: [ :job_title, :location ],
        using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something! Partial words allowed.
        }

end
