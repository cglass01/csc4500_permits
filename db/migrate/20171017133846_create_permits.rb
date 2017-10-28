class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits, id: false do |t|
      t.string :permit_number, primary_key: true
      t.datetime :date_issued
      t.string :issued_by
      t.date :date_entered
      t.string :entered_by

      t.timestamps
    end
  end
end
