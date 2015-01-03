class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.references :project

      t.timestamps
    end
    add_index :tasks, [:project_id, :created_at]
  end
end
