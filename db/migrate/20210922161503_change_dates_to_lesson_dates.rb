class ChangeDatesToLessonDates < ActiveRecord::Migration[5.2]
  def change
    rename_table :dates, :lesson_dates
  end
end
