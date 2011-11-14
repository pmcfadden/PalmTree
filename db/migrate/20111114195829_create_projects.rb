class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :contact_email
      t.string :contact_name

      t.timestamps
    end
  end
end
