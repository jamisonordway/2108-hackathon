class Attendance < ApplicationRecord
  belongs_to :lesson_date
  enum status: [:absent, :present, :tardy]

  def guest?
    !student.present?
  end

  def student
    attendee_email = self.email
    Student.find_by(email: attendee_email)
  end
end
