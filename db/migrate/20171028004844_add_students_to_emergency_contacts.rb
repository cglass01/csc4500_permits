class AddStudentsToEmergencyContacts < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :emergency_contacts, :students, column: :student_auID, primary_key: :student_auID
  end
end
