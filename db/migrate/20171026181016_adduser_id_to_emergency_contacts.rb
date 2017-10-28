class AdduserIdToEmergencyContacts < ActiveRecord::Migration[5.1]
  def change
  	add_column :emergency_contacts, :user_id, :integer
  end
end
