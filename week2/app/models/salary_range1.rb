class SalaryRange1 < ApplicationRecord
  belongs_to :job1

  validate :min_is_less_than_max

  def min_is_less_than_max
    if min_salary > max_salary
      errors.add(:min_salary, "cannot be greater than maximum salary!")
    end
  end
end
