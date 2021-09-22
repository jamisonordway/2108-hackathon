class ChangeAttendanceDateIdToAttendanceLessonDateId < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances, :date_id
    add_reference :attendances, :lesson_date, foreign_key: true
  end
end
