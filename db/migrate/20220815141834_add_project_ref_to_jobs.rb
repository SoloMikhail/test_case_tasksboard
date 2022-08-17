class AddProjectRefToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :project, index: true
    add_foreign_key :jobs, :projects
  end
end
