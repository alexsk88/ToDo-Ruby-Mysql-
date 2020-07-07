class AddDataStartToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :date_start, :datetime
  end
end
