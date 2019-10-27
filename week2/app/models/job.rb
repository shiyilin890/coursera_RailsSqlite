class Job < ApplicationRecord
  belongs_to :person
  # self.primary_key = 'id'
  has_one :salary_range

end
