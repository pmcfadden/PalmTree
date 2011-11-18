class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.string :contact_email
      t.string :contact_name

      t.timestamps
    end
  end
end
