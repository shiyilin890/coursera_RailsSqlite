class CreateJob1s < ActiveRecord::Migration[6.0]
  def change
    create_table :job1s do |t|
      t.string :title
      t.string :company
      t.string :position_id
      t.references :person

      t.timestamps
    end
  end
end
