class CreateMtasks < ActiveRecord::Migration[7.0]
  def change
    create_table :mtasks do |t|
      t.string :title
      t.text :content
      t.text :status
      t.date :start_date
      t.date :due_date
      t.integer :estimation

      t.timestamps
    end
  end
end
