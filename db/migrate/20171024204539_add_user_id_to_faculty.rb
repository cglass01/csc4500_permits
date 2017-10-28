class AddUserIdToFaculty < ActiveRecord::Migration[5.1]
  def change
    add_column :faculties, :user_id, :integer
  end
end
