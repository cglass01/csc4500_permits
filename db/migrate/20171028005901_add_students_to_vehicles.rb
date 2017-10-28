class AddStudentsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :vehicles, :students, column: :student_auID, primary_key: :student_auID
  end
end
