class AddAccountIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :account_id, :integer
  end
end
