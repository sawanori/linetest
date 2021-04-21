class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task

      t.timestamps
    end
    add_index :tasks, :task
  end
end
