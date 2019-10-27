class CreateSalaryRange1s < ActiveRecord::Migration[6.0]
  def change
    create_table :salary_range1s do |t|
      t.float :min_salary
      t.float :max_salary
      t.references :job1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
