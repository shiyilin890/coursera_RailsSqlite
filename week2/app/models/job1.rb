class Job1 < ApplicationRecord
	belongs_to :person
	has_one :salary_range1

	validates :title, :company, presence: true
end
