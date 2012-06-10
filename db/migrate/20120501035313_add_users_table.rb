class AddUsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :openid_claimed_identifier
      t.string :given_name
      t.string :family_name
      t.string :email_address
      t.boolean :editor, :default => false
    end
  end

  def down
    drop_table :users
  end
end
