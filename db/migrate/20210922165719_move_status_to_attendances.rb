class MoveStatusToAttendances < ActiveRecord::Migration[5.2]
  def change
    remove_column :lesson_dates, :status
    add_column :attendances, :status, :integer
  end
end
