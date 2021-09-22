class Attendance < ApplicationRecord
  belongs_to :lesson_date
  enum status: [:absent, :present, :tardy]
end
