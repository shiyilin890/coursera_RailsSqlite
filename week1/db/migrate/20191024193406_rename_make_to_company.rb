class RenameMakeToCompany < ActiveRecord::Migration[6.0]
  def change
  	rename_column :cars, :make, :company

  end
end
