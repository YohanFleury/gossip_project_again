class CreateLierPrivateMessageUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :lier_private_message_users do |t|
      t.references :user, index: true
      t.references :private_message, index: true
      
      
      
    end
    
  end
end

