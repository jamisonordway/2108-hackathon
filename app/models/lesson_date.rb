class LessonDate < ApplicationRecord
  belongs_to :mod
  enum time_of_day: ['AM', 'PM']
end
