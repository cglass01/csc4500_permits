class AddFacultiesToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :vehicles, :faculties, column: :faculty_auID, primary_key: :faculty_auID
  end
end
