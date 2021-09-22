class Student < ApplicationRecord
  belongs_to :mod

  def attendance_record
    attendances = Attendance.where(email: email)
    presence_count = attendances.where(status: ['present', 'tardy']).count.to_f
    if presence_count
      "#{(presence_count / attendances.count.to_f).round(2) * 100.0} %"
    else
      'N/A'
    end
  end
end
