class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles, id: false do |t|
      t.bigint :vehicle_id, primary_key: true, auto_increment: true
      t.string :year
      t.string :color
      t.string :make
      t.string :model
      t.string :license_number
      t.string :state_licensed
      t.string :experation_year
      t.string :permits_permit_number
      t.string :faculty_auID
      t.string :students_auID

      t.timestamps
    end
  end
end
