class ZoomApiService
  def initialize(instructor_email, lesson_date_id)
    @email = instructor_email
    @lesson_date_id = lesson_date_id
  end

  def get_present
    # todo:
    #   make API call to list participants
    #   create 'present' attendances with emails in response, lesson_date_id
  end
end
