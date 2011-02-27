class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    # Create users table.
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
    add_index :users, :unlock_token,         :unique => true
    
    # Add user_id to adventure model.
    add_column(:adventures, :user_id, :integer, :null => false, :default => 1)
  end

  def self.down
    drop_table :users
    
    remove_column(:adventures, :user_id)
  end
end
