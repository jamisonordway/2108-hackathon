class LessonDate < ApplicationRecord
  belongs_to :mod
  has_many :attendances
  enum time_of_day: ['AM', 'PM']

  def date_title
    created_at.strftime("%b %d, %Y")
  end
end
