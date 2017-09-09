class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority_level
      t.time :completion_time
      t.boolean :completed

      t.timestamps
    end
  end
end
