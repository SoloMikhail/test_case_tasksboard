class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :summary
      t.date :start_date
      t.date :due_date

      t.timestamps
    end
  end
end
