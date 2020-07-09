class AddFileToTasks < ActiveRecord::Migration[6.0]
  def change
    add_attachment :tasks, :file
  end
end
