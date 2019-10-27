class CreateJob2s < ActiveRecord::Migration[6.0]
  def change
    create_table :job2s do |t|
      t.string :title
      t.string :company
      t.string :position_id
      t.references :person, index: true, foreign_key: true

      t.timestamps
    end
  end
end
