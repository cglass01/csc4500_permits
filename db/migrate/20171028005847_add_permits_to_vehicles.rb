class AddPermitsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :vehicles, :permits, column: :permit_number, primary_key: :permit_number
  end
end
