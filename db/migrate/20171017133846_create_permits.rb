class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.datetime :date_issued
      t.string :issued_by
      t.date :date_entered
      t.string :entered_by

      t.timestamps
    end
  end
end
