class CreateMtasks < ActiveRecord::Migration[7.0]
  def up
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.text :status
      t.datetime :start_date
      t.datetime :due_date
      t.integer :estimation

      t.timestamps
    end
  end

  def down
    drop_table :jobs
  end

end
